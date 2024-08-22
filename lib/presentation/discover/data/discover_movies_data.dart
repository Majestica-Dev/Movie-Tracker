import 'package:movie_tracker/presentation/discover/models/discover_movie.dart';
import 'package:movie_tracker/domain/movie/entities/ai_rec/watch_status.dart';
import 'package:movie_tracker/domain/movie/entities/movie.dart';

final actionMovies = DiscoverMovies(
  genre: 'Action',
  description:
      'High-octane movies filled with thrilling sequences and intense moments.',
  movies: [
    Movie(
      releaseDate: null,
      id: '155',
      title: 'The Dark Knight',
      description:
          'Batman raises the stakes in his war on crime. With the help of Lt. Jim Gordon and District Attorney Harvey Dent, Batman sets out to dismantle the remaining criminal organizations that plague the streets. The partnership proves to be effective, but they soon find themselves prey to a reign of chaos unleashed by a rising criminal mastermind known to the terrified citizens of Gotham as the Joker.',
      posterImageUrl:
          'https://image.tmdb.org/t/p/w342/qJ2tW6WMUDux911r6m7haRef0WH.jpg',
      status: WatchStatus.toWatch,
      editedAt: DateTime.now(),
      rating: 8.5,
    ),
    Movie(
      releaseDate: null,
      id: '27205',
      title: 'Inception',
      description:
          '''Cobb, a skilled thief who commits corporate espionage by infiltrating the subconscious of his targets is offered a chance to regain his old life as payment for a task considered to be impossible: "inception", the implantation of another person's idea into a target's subconscious.''',
      posterImageUrl:
          'https://image.tmdb.org/t/p/w342/ljsZTbVsrQSqZgWeep2B1QiDKuh.jpg',
      status: WatchStatus.toWatch,
      editedAt: DateTime.now(),
      rating: 8.5,
    ),
    Movie(
      releaseDate: null,
      id: '1366',
      title: 'Rocky',
      description:
          '''An uneducated collector for a Philadelphia loan shark is given a once-in-a-lifetime opportunity to fight against the world heavyweight boxing champion.''',
      posterImageUrl:
          'https://image.tmdb.org/t/p/w342/8kEun6U9hTddM7NEfLLCGQKU2Mp.jpg',
      status: WatchStatus.toWatch,
      editedAt: DateTime.now(),
      rating: 7.8,
    ),
    Movie(
      releaseDate: null,
      id: '98',
      title: 'Gladiator',
      description:
          '''In the year 180, the death of emperor Marcus Aurelius throws the Roman Empire into chaos. Maximus is one of the Roman army's most capable and trusted generals and a key advisor to the emperor. As Marcus' devious son Commodus ascends to the throne, Maximus is set to be executed. He escapes, but is captured by slave traders. Renamed Spaniard and forced to become a gladiator, Maximus must battle to the death with other men for the amusement of paying audiences.''',
      posterImageUrl:
          'https://image.tmdb.org/t/p/w342/qKSSpiaiLQC2gSZ6wHrV3mgZkpT.jpg',
      status: WatchStatus.toWatch,
      editedAt: DateTime.now(),
      rating: 8.2,
    ),
    Movie(
      releaseDate: null,
      id: '603',
      title: 'The Matrix',
      description:
          '''Set in the 22nd century, The Matrix tells the story of a computer hacker who joins a group of underground insurgents fighting the vast and powerful computers who now rule the earth.''',
      posterImageUrl:
          'https://image.tmdb.org/t/p/w342/f89U3ADr1oiB1s9GkdPOEpXUk5H.jpg',
      status: WatchStatus.toWatch,
      editedAt: DateTime.now(),
      rating: 8.2,
    ),
  ],
);

final DiscoverMovies comedyMovies = DiscoverMovies(
  genre: 'Comedy',
  description: 'Side-Splitting Fun with Hilarious Moments and Endless Laughs.',
  movies: [
    Movie(
      releaseDate: null,
      id: '8467',
      title: 'Dumb and Dumber',
      description:
          '''Lloyd and Harry are two men whose stupidity is really indescribable. When Mary, a beautiful woman, loses an important suitcase with money before she leaves for Aspen, the two friends (who have found the suitcase) decide to return it to her. After some "adventures" they finally get to Aspen where, using the lost money they live it up and fight for Mary's heart.''',
      posterImageUrl:
          'https://image.tmdb.org/t/p/w342/cRPxv9N6Y6GmNR9Xr5saLaeOFdd.jpg',
      status: WatchStatus.toWatch,
      editedAt: DateTime.now(),
      rating: 7.2,
    ),
    Movie(
      releaseDate: null,
      id: '1875',
      title: 'The Hangover ',
      description:
          '''When three friends finally come to after a raucous night of bachelor-party revelry, they find a baby in the closet and a tiger in the bathroom. But they can't seem to locate their best friend, Doug – who's supposed to be tying the knot. Launching a frantic search for Doug, the trio perseveres through a nasty hangover to try to make it to the church on time.''',
      posterImageUrl:
          'https://image.tmdb.org/t/p/w342/uluhlXubGu1VxU63X9VHCLWDAYP.jpgg',
      status: WatchStatus.toWatch,
      editedAt: DateTime.now(),
      rating: 7.3,
    ),
    Movie(
      releaseDate: null,
      id: '8363',
      title: 'Superbad',
      description:
          '''Two co-dependent high school seniors are forced to deal with separation anxiety after their plan to stage a booze-soaked party goes awry.''',
      posterImageUrl:
          'https://image.tmdb.org/t/p/w342/ek8e8txUyUwd2BNqj6lFEerJfbq.jpg',
      status: WatchStatus.toWatch,
      editedAt: DateTime.now(),
      rating: 7.3,
    ),
  ],
);

final List<DiscoverMovies> discoverMoviesData = [
  actionMovies,
  comedyMovies,
];
