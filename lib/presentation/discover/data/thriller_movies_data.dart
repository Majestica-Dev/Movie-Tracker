import 'package:movie_tracker/domain/movie/entities/ai_rec/watch_status.dart';
import 'package:movie_tracker/domain/movie/entities/movie.dart';
import 'package:movie_tracker/presentation/discover/models/discover_movie.dart';

final DiscoverMovies thrillerMovies = DiscoverMovies(
  genre: 'Thriller',
  description:
      'Edge-of-your-seat suspense, unexpected twists, and nonstop excitement—these thrillers will keep you hooked until the last frame!',
  movies: [
    Movie(
      id: '872585',
      title: 'Oppenheimer',
      description:
          '''The story of J. Robert Oppenheimer's role in the development of the atomic bomb during World War II.''',
      posterImageUrl:
          'https://image.tmdb.org/t/p/w342/8Gxv8gSFCU0XGDykEGv7zR1n2ua.jpg',
      status: WatchStatus.toWatch,
      editedAt: DateTime.now(),
      rating: 8.2,
      releaseDate: DateTime(2023, 11, 9),
    ),
    Movie(
      id: '475557',
      title: 'Joker',
      description:
          '''During the 1980s, a failed stand-up comedian is driven insane and turns to a life of crime and chaos in Gotham City while becoming an infamous psychopathic crime figure.''',
      posterImageUrl:
          'https://image.tmdb.org/t/p/w342/udDclJoHjfjb8Ekgsd4FDteOkCU.jpg',
      status: WatchStatus.toWatch,
      editedAt: DateTime.now(),
      rating: 8.2,
      releaseDate: DateTime(1019, 10, 4),
    ),
    Movie(
      id: '49047',
      title: 'Gravity',
      description:
          '''Dr. Ryan Stone, a brilliant medical engineer on her first Shuttle mission, with veteran astronaut Matt Kowalsky in command of his last flight before retiring. But on a seemingly routine spacewalk, disaster strikes. The Shuttle is destroyed, leaving Stone and Kowalsky completely alone-tethered to nothing but each other and spiraling out into the blackness of space. The deafening silence tells them they have lost any link to Earth and any chance for rescue. As fear turns to panic, every gulp of air eats away at what little oxygen is left. But the only way home may be to go further out into the terrifying expanse of space.''',
      posterImageUrl:
          'https://image.tmdb.org/t/p/w342/kZ2nZw8D681aphje8NJi8EfbL1U.jpg',
      status: WatchStatus.toWatch,
      editedAt: DateTime.now(),
      rating: 7.2,
      releaseDate: DateTime(2013, 10, 4),
    ),
    Movie(
      id: '945961',
      title: 'Alien: Romulus',
      description:
          '''While scavenging the deep ends of a derelict space station, a group of young space colonizers come face to face with the most terrifying life form in the universe.''',
      posterImageUrl:
          'https://image.tmdb.org/t/p/w342/b33nnKl1GSFbao4l3fZDDqsMx0F.jpg',
      status: WatchStatus.toWatch,
      editedAt: DateTime.now(),
      rating: 7.2,
      releaseDate: DateTime(2024, 8, 16),
    ),
    Movie(
      id: '263115',
      title: 'Logan',
      description:
          '''In the near future, a weary Logan cares for an ailing Professor X in a hideout on the Mexican border. But Logan's attempts to hide from the world and his legacy are upended when a young mutant arrives, pursued by dark forces.''',
      posterImageUrl:
          'https://image.tmdb.org/t/p/w342/fnbjcRDYn6YviCcePDnGdyAkYsB.jpg',
      status: WatchStatus.toWatch,
      editedAt: DateTime.now(),
      rating: 7.8,
      releaseDate: DateTime(2017, 3, 3),
    ),
  ],
);