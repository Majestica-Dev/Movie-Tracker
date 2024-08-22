import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/domain/movie/entities/movie.dart';

enum MovieCoverSize {
  L(width: 185.81, height: 280),
  M(width: 131, height: 197),
  S(width: 108, height: 162),
  // ignore: constant_identifier_names
  XS2(width: 64, height: 96),
  // ignore: constant_identifier_names
  XS(width: 50, height: 75);

  final double width;
  final double height;

  const MovieCoverSize({
    required this.width,
    required this.height,
  });
}

class MovieCover extends StatelessWidget {
  final Movie movie;
  final MovieCoverSize movieCoverSize;
  final VoidCallback? onTap;
  final bool showTitle;
  final bool removeShadow;
  final bool chacheImage;

  const MovieCover({
    required this.movie,
    this.movieCoverSize = MovieCoverSize.S,
    this.showTitle = true,
    this.removeShadow = false,
    required this.chacheImage,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: movieCoverSize.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: movieCoverSize.width,
              height: movieCoverSize.height,
              decoration: BoxDecoration(
                color: t.colors.primaryHighContainer,
                image: movie.posterImageUrl == null
                    ? null
                    : DecorationImage(
                        image: chacheImage
                            ? CachedNetworkImageProvider(movie.posterImageUrl!)
                            : NetworkImage(movie.posterImageUrl!),
                        fit: BoxFit.cover,
                      ),
                boxShadow: _boxShadow,
                borderRadius: BorderRadius.circular(t.borderRadius.r1),
              ),
            ),
            _title(context),
          ],
        ),
      ),
    );
  }

  List<BoxShadow>? get _boxShadow {
    if (removeShadow ||
        movieCoverSize == MovieCoverSize.XS ||
        movieCoverSize == MovieCoverSize.XS2) return null;

    return [
      BoxShadow(
        color: const Color(0xff2A2A30).withOpacity(.25),
        offset: const Offset(0, 0),
        blurRadius: 2,
        spreadRadius: 0,
      ),
      BoxShadow(
        color: const Color(0xff201F31).withOpacity(.2),
        offset: const Offset(0, 3.1),
        blurRadius: 10,
        spreadRadius: 1,
      ),
    ];
  }

  Widget _title(BuildContext context) {
    if (!showTitle) return const SizedBox();

    final t = context.mdsTheme;

    return Column(
      children: [
        SizedBox(
          height:
              movieCoverSize == MovieCoverSize.M ? t.spacing.x2 : t.spacing.x1,
        ),
        Text(
          movie.title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: movieCoverSize == MovieCoverSize.M
              ? t.textTheme.bodySRegular
                  .copyWith(color: t.colors.neutralHighContent)
              : t.textTheme.bodyXSRegular
                  .copyWith(color: t.colors.neutralHighContent),
        )
      ],
    );
  }
}
