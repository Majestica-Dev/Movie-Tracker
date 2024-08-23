import 'package:movie_tracker/domain/movie/entities/ai_rec/watch_status.dart';
import 'package:movie_tracker/domain/movie/entities/movie.dart';
import 'package:movie_tracker/presentation/discover/models/discover_movie.dart';

final DiscoverMovies comedyMovies = DiscoverMovies(
  genre: 'Comedy',
  description: 'Side-Splitting Fun with Hilarious Moments and Endless Laughs.',
  movies: [
    Movie(
      releaseDate: DateTime(1994, 12, 16),
      id: '8467',
      title: 'Dumb and Dumber',
      description:
          '''Lloyd and Harry are two men whose stupidity is really indescribable. When Mary, a beautiful woman, loses an important suitcase with money before she leaves for Aspen, the two friends (who have found the suitcase) decide to return it to her. After some "adventures" they finally get to Aspen where, using the lost money they live it up and fight for Mary's heart.''',
      posterImageUrl:
          'https://image.tmdb.org/t/p/w342/4LdpBXiCyGKkR8FGHgjKlphrfUc.jpg',
      status: WatchStatus.toWatch,
      editedAt: DateTime.now(),
      rating: 6.6,
    ),
    Movie(
      releaseDate: DateTime(2001, 8, 18),
      id: '808',
      title: 'Shrek',
      description:
          '''It ain't easy bein' green -- especially if you're a likable (albeit smelly) ogre named Shrek. On a mission to retrieve a gorgeous princess from the clutches of a fire-breathing dragon, Shrek teams up with an unlikely compatriot -- a wisecracking donkey.''',
      posterImageUrl:
          'https://image.tmdb.org/t/p/w342/iB64vpL3dIObOtMZgX3RqdVdQDc.jpg',
      status: WatchStatus.toWatch,
      editedAt: DateTime.now(),
      rating: 7.7,
    ),
    Movie(
      releaseDate: DateTime(2005, 7, 15),
      id: '9522',
      title: 'Wedding Crashers',
      description:
          '''John and his buddy, Jeremy are emotional criminals who know how to use a woman's hopes and dreams for their own carnal gain. Their modus operandi: crashing weddings. Normally, they meet guests who want to toast the romantic day with a random hook-up. But when John meets Claire, he discovers what true love – and heartache – feels like.''',
      posterImageUrl:
          'https://image.tmdb.org/t/p/w342/lFM3lk2zVzC1YFnKm0r6LbFPyRu.jpg',
      status: WatchStatus.toWatch,
      editedAt: DateTime.now(),
      rating: 6.5,
    ),
    Movie(
      releaseDate: DateTime(2012, 6, 19),
      id: '72105',
      title: 'Ted',
      description:
          '''John Bennett, a man whose childhood wish of bringing his teddy bear to life came true, now must decide between keeping the relationship with the bear or his girlfriend, Lori.''',
      posterImageUrl:
          'https://image.tmdb.org/t/p/w342/1QVZXQQHCEIj8lyUhdBYd2qOYtq.jpg',
      status: WatchStatus.toWatch,
      editedAt: DateTime.now(),
      rating: 6.4,
    ),
    Movie(
      releaseDate: DateTime(2009, 6, 5),
      id: '18785',
      title: 'The Hangover',
      description:
          '''When three friends finally come to after a raucous night of bachelor-party revelry, they find a baby in the closet and a tiger in the bathroom. But they can't seem to locate their best friend, Doug – who's supposed to be tying the knot. Launching a frantic search for Doug, the trio perseveres through a nasty hangover to try to make it to the church on time.''',
      posterImageUrl:
          'https://image.tmdb.org/t/p/w342/uluhlXubGu1VxU63X9VHCLWDAYP.jpg',
      status: WatchStatus.toWatch,
      editedAt: DateTime.now(),
      rating: 7.3,
    ),
  ],
);
