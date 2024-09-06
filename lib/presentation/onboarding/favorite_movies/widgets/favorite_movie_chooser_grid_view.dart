import 'package:flutter/widgets.dart';
import 'package:majestica_ds/icons/icons.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/core/typdefs/typdef.dart';
import 'package:movie_tracker/domain/movie/entities/ai_rec/watch_status.dart';
import 'package:movie_tracker/domain/movie/entities/movie.dart';
import 'package:movie_tracker/presentation/core/widgets/grid_view/auto_height_grid.dart';
import 'package:movie_tracker/presentation/core/widgets/movie/cover/movie_cover.dart';

class FavoriteMovieChooserGridView extends StatelessWidget {
  final ValueChanged<Movie> onChoose;
  final ValueChanged<Movie> onRemove;
  final Movies chosedMovies;

  const FavoriteMovieChooserGridView({
    required this.chosedMovies,
    required this.onChoose,
    required this.onRemove,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    return SizedBox(
      height: 386,
      child: ResponsiveGridView(
        padding: EdgeInsets.zero,
        itemCount: _recMovies.length,
        crossAxisCount: 3,
        shrinkWrap: true,
        itemWidth: MovieCoverSize.S.width,
        physics: const BouncingScrollPhysics(),
        mainAxisSpacing: t.spacing.x6,
        builder: (context, index) {
          final movie = _recMovies[index];
          final bool isMovieChosen = chosedMovies.contains(movie);

          return Stack(
            children: [
              MovieCover(
                onTap: () {
                  if (isMovieChosen) {
                    onRemove(movie);
                  } else {
                    onChoose(movie);
                  }
                },
                chacheImage: true,
                movieCoverSize: MovieCoverSize.S,
                movie: _recMovies[index],
              ),
              if (isMovieChosen)
                Positioned(
                  left: 10,
                  top: 10,
                  child: LightShadow(
                    child: PhosphorIcon(
                      PhosphorIconsFill.checkCircle,
                      size: 22,
                      color: t.colors.allWhite,
                    ),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}

final Movies _recMovies = [
  Movie(
    id: '299536',
    title: 'Avengers: Infinity War',
    description:
        'As the Avengers and their allies have continued to protect the world from threats too large for any one hero to handle, a new danger has emerged from the cosmic shadows: Thanos. A despot of intergalactic infamy, his goal is to collect all six Infinity Stones, artifacts of unimaginable power, and use them to inflict his twisted will on all of reality. Everything the Avengers have fought for has led up to this moment - the fate of Earth and existence itself has never been more uncertain.',
    posterImageUrl:
        'https://image.tmdb.org/t/p/w342/7WsyChQLEftFiDOVTGkv3hFpyyt.jpg',
    status: WatchStatus.toWatch,
    editedAt: DateTime.now(),
    rating: 8.247,
    releaseDate: DateTime(2018, 04, 25),
    trailerLink: 'https://www.youtube.com/watch?v=QwievZ1Tx-8',
  ),
  Movie(
    id: '533535',
    title: 'Deadpool & Wolverine',
    description:
        'A listless Wade Wilson toils away in civilian life with his days as the morally flexible mercenary, Deadpool, behind him. But when his homeworld faces an existential threat, Wade must reluctantly suit-up again with an even more reluctant Wolverine.',
    posterImageUrl:
        'https://image.tmdb.org/t/p/w342/8cdWjvZQUExUUTzyp4t6EDMubfO.jpg',
    status: WatchStatus.toWatch,
    editedAt: DateTime.now(),
    rating: 7.751,
    releaseDate: DateTime(2024, 07, 24),
    trailerLink: 'https://www.youtube.com/watcotheh?v=Idh8n5XuYIA',
  ),
  Movie(
    id: '872585',
    title: 'Oppenheimer',
    description:
        '''The story of J. Robert Oppenheimer's role in the development of the atomic bomb during World War II.''',
    posterImageUrl:
        'https://image.tmdb.org/t/p/w342/8Gxv8gSFCU0XGDykEGv7zR1n2ua.jpg',
    status: WatchStatus.toWatch,
    editedAt: DateTime.now(),
    rating: 8.094,
    releaseDate: DateTime(2023, 07, 19),
    trailerLink: 'https://www.youtube.com/watch?v=qiuSBWVdgLI',
  ),
  Movie(
    id: '945961',
    title: 'Alien: Romulus',
    description:
        'While scavenging the deep ends of a derelict space station, a group of young space colonizers come face to face with the most terrifying life form in the universe.',
    posterImageUrl:
        'https://image.tmdb.org/t/p/w342/b33nnKl1GSFbao4l3fZDDqsMx0F.jpg',
    status: WatchStatus.toWatch,
    editedAt: DateTime.now(),
    rating: 7.15,
    releaseDate: DateTime(2024, 08, 13),
    trailerLink: 'https://www.youtube.com/watch?v=x0XDEhP4MQs',
  ),
  Movie(
    id: '313369',
    title: 'La La Land',
    description:
        'Mia, an aspiring actress, serves lattes to movie stars in between auditions and Sebastian, a jazz musician, scrapes by playing cocktail party gigs in dingy bars, but as success mounts they are faced with decisions that begin to fray the fragile fabric of their love affair, and the dreams they worked so hard to maintain in each other threaten to rip them apart.',
    posterImageUrl:
        'https://image.tmdb.org/t/p/w342/uDO8zWDhfWwoFdKS4fzkUJt0Rf0.jpg',
    status: WatchStatus.toWatch,
    editedAt: DateTime.now(),
    rating: 7.903,
    releaseDate: DateTime(2016, 11, 29),
    trailerLink: 'https://www.youtube.com/watch?v=0pdqf4P9MB8',
  ),
  Movie(
    id: '155',
    title: 'The Dark Knight',
    description:
        'Batman raises the stakes in his war on crime. With the help of Lt. Jim Gordon and District Attorney Harvey Dent, Batman sets out to dismantle the remaining criminal organizations that plague the streets. The partnership proves to be effective, but they soon find themselves prey to a reign of chaos unleashed by a rising criminal mastermind known to the terrified citizens of Gotham as the Joker.',
    posterImageUrl:
        'https://image.tmdb.org/t/p/w342/qJ2tW6WMUDux911r6m7haRef0WH.jpg',
    status: WatchStatus.toWatch,
    editedAt: DateTime.now(),
    rating: 8.516,
    releaseDate: DateTime(2008, 07, 16),
    trailerLink: 'https://www.youtube.com/watch?v=EXeTwQWrcwY',
  ),
  Movie(
    id: '475557',
    title: 'Joker',
    description:
        'During the 1980s, a failed stand-up comedian is driven insane and turns to a life of crime and chaos in Gotham City while becoming an infamous psychopathic crime figure.',
    posterImageUrl:
        'https://image.tmdb.org/t/p/w342/udDclJoHjfjb8Ekgsd4FDteOkCU.jpg',
    status: WatchStatus.toWatch,
    editedAt: DateTime.now(),
    rating: 8.158,
    releaseDate: DateTime(2019, 10, 01),
    trailerLink: 'https://www.youtube.com/watch?v=-RFFRxcoKfA',
  ),
  Movie(
    id: '27205',
    title: 'Inception',
    description:
        '''Cobb, a skilled thief who commits corporate espionage by infiltrating the subconscious of his targets is offered a chance to regain his old life as payment for a task considered to be impossible: "inception", the implantation of another person's idea into a target's subconscious.''',
    posterImageUrl:
        'https://image.tmdb.org/t/p/w342/ljsZTbVsrQSqZgWeep2B1QiDKuh.jpg',
    status: WatchStatus.toWatch,
    editedAt: DateTime.now(),
    rating: 8.368,
    releaseDate: DateTime(2010 - 07 - 15),
    trailerLink: 'https://www.youtube.com/watch?v=cdx31ak4KbQ',
  ),
  Movie(
    id: '37799',
    title: 'The Social Network',
    description:
        '''The tale of a new breed of cultural insurgent: a punk genius who sparked a revolution and changed the face of human interaction for a generation, and perhaps forever. Chronicling the formation of Facebook and the battles over ownership that followed upon the website's unfathomable success, The Social Network bears witness to the birth of an idea that rewove the fabric of society even as it unraveled the friendship of its creators.''',
    posterImageUrl:
        'https://image.tmdb.org/t/p/w342/n0ybibhJtQ5icDqTp8eRytcIHJx.jpg',
    status: WatchStatus.toWatch,
    editedAt: DateTime.now(),
    rating: 7.368,
    releaseDate: DateTime(2010, 10, 01),
    trailerLink: 'https://www.youtube.com/watch?v=rBCNU0XT9GY',
  ),
  Movie(
    id: '98',
    title: 'Gladiator',
    description:
        "In the year 180, the death of emperor Marcus Aurelius throws the Roman Empire into chaos.  Maximus is one of the Roman army's most capable and trusted generals and a key advisor to the emperor.  As Marcus' devious son Commodus ascends to the throne, Maximus is set to be executed.  He escapes, but is captured by slave traders.  Renamed Spaniard and forced to become a gladiator, Maximus must battle to the death with other men for the amusement of paying audiences.",
    posterImageUrl:
        'https://image.tmdb.org/t/p/w342/ty8TGRuvJLPUmAR1H1nRIsgwvim.jpg',
    status: WatchStatus.toWatch,
    editedAt: DateTime.now(),
    rating: 8.218,
    releaseDate: DateTime(2000 - 05 - 04),
    trailerLink: 'https://www.youtube.com/watch?v=P5ieIbInFpg',
  ),
  Movie(
    id: '603',
    title: 'The Matrix',
    description:
        'Set in the 22nd century, The Matrix tells the story of a computer hacker who joins a group of underground insurgents fighting the vast and powerful computers who now rule the earth.',
    posterImageUrl:
        'https://image.tmdb.org/t/p/w342/f89U3ADr1oiB1s9GkdPOEpXUk5H.jpg',
    status: WatchStatus.toWatch,
    editedAt: DateTime.now(),
    rating: 8.217,
    releaseDate: DateTime(1999, 03, 31),
    trailerLink: 'https://www.youtube.com/watch?v=d0XTFAMmhrE',
  ),
  Movie(
    id: '746036',
    title: 'The Fall Guy',
    description:
        'Fresh off an almost career-ending accident, stuntman Colt Seavers has to track down a missing movie star, solve a conspiracy and try to win back the love of his life while still doing his day job.',
    posterImageUrl:
        'https://image.tmdb.org/t/p/w342/tSz1qsmSJon0rqjHBxXZmrotuse.jpg',
    status: WatchStatus.toWatch,
    editedAt: DateTime.now(),
    rating: 7.184,
    releaseDate: DateTime(2024, 04, 24),
    trailerLink: 'https://www.youtube.com/watch?v=EySdVK0NK1Y',
  ),
];
