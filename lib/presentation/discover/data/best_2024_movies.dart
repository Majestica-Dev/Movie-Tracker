import 'package:movie_tracker/domain/movie/entities/ai_rec/watch_status.dart';
import 'package:movie_tracker/domain/movie/entities/movie.dart';
import 'package:movie_tracker/presentation/discover/models/discover_movie.dart';

final DiscoverMovies best2024Movies = DiscoverMovies(
  genre: 'Best Movies of 2024',
  description:
      "Explore the must-see films of 2024, featuring blockbuster action, captivating dramas, and stunning visuals. Discover this year's cinematic gems that you won't want to miss.",
  movies: [
    Movie(
      releaseDate: DateTime(2023, 11, 9),
      id: '872585',
      title: 'Oppenheimer',
      description:
          '''The story of J. Robert Oppenheimer's role in the development of the atomic bomb during World War II.''',
      posterImageUrl:
          'https://image.tmdb.org/t/p/w342/8Gxv8gSFCU0XGDykEGv7zR1n2ua.jpg',
      status: WatchStatus.toWatch,
      editedAt: DateTime.now(),
      rating: 8.2,
    ),
    Movie(
      releaseDate: DateTime(2024, 2, 29),
      id: '693134',
      title: 'Dune: Part Two',
      description:
          '''Follow the mythic journey of Paul Atreides as he unites with Chani and the Fremen while on a path of revenge against the conspirators who destroyed his family. Facing a choice between the love of his life and the fate of the known universe, Paul endeavors to prevent a terrible future only he can foresee.''',
      posterImageUrl:
          'https://image.tmdb.org/t/p/w342/1pdfLvkbY9ohJlCjQH2CZjjYVvJ.jpg',
      status: WatchStatus.toWatch,
      editedAt: DateTime.now(),
      rating: 8.2,
    ),
    Movie(
      releaseDate: DateTime(2023, 10, 19),
      id: '466420',
      title: 'Killers of the Flower Moon',
      description:
          '''When oil is discovered in 1920s Oklahoma under Osage Nation land, the Osage people are murdered one by one—until the FBI steps in to unravel the mystery.''',
      posterImageUrl:
          'https://image.tmdb.org/t/p/w342/dB6Krk806zeqd0YNp2ngQ9zXteH.jpg',
      status: WatchStatus.toWatch,
      editedAt: DateTime.now(),
      rating: 7.5,
    ),
    Movie(
      releaseDate: DateTime(2024, 6, 7),
      id: '573435',
      title: 'Bad Boys: Ride or Die',
      description:
          '''After their late former Captain is framed, Lowrey and Burnett try to clear his name, only to end up on the run themselves.''',
      posterImageUrl:
          'https://image.tmdb.org/t/p/w342/oGythE98MYleE6mZlGs5oBGkux1.jpg',
      status: WatchStatus.toWatch,
      editedAt: DateTime.now(),
      rating: 7.6,
    ),
    Movie(
      releaseDate: DateTime(2023, 7, 21),
      id: '346698',
      title: 'Barbie',
      description:
          '''Barbie and Ken are having the time of their lives in the colorful and seemingly perfect world of Barbie Land. However, when they get a chance to go to the real world, they soon discover the joys and perils of living among humans.''',
      posterImageUrl:
          'https://image.tmdb.org/t/p/w342/iuFNMS8U5cb6xfzi51Dbkovj7vM.jpg',
      status: WatchStatus.toWatch,
      editedAt: DateTime.now(),
      rating: 7.0,
    ),
    Movie(
      releaseDate: DateTime(2024, 6, 23),
      id: '970347',
      title: 'The Killer',
      description:
          '''Zee is a feared contract killer known as "the Queen of the Dead," but when she refuses to murder a young blind woman, she finds herself hunted both by criminal colleagues and a determined police detective.''',
      posterImageUrl:
          'https://image.tmdb.org/t/p/w342/U4FuV5zBk0vclsj21zc9fa6oOf.jpg',
      status: WatchStatus.toWatch,
      editedAt: DateTime.now(),
      rating: 6.1,
    ),
    Movie(
      releaseDate: DateTime(2023, 12, 8),
      id: '792307',
      title: 'Poor Things',
      description:
          '''Brought back to life by an unorthodox scientist, a young woman runs off with a lawyer on a whirlwind adventure across the continents. Free from the prejudices of her times, she grows steadfast in her purpose to stand for equality and liberation.''',
      posterImageUrl:
          'https://image.tmdb.org/t/p/w342/kCGlIMHnOm8JPXq3rXM6c5wMxcT.jpg',
      status: WatchStatus.toWatch,
      editedAt: DateTime.now(),
      rating: 7.8,
    ),
    Movie(
      releaseDate: DateTime(2023, 6, 8),
      id: '1010581',
      title: 'My Fault',
      description:
          '''Noah must leave her city, boyfriend, and friends to move into William Leister's mansion, the flashy and wealthy husband of her mother Rafaela. As a proud and independent 17 year old, Noah resists living in a mansion surrounded by luxury. However, it is there where she meets Nick, her new stepbrother, and the clash of their strong personalities becomes evident from the very beginning.''',
      posterImageUrl:
          'https://image.tmdb.org/t/p/w342/w46Vw536HwNnEzOa7J24YH9DPRS.jpg',
      status: WatchStatus.toWatch,
      editedAt: DateTime.now(),
      rating: 8.0,
    ),
    Movie(
      releaseDate: DateTime(2024, 4, 4),
      id: '1127166',
      title: 'The Tearsmith',
      description:
          '''Adopted together after a tough childhood in an orphanage, Nica and Rigel realize that unexpected but irresistible feelings pull them together.''',
      posterImageUrl:
          'https://image.tmdb.org/t/p/w342/uoBHsxSgfc3PQsSn98RfnbePHOy.jpg',
      status: WatchStatus.toWatch,
      editedAt: DateTime.now(),
      rating: 6.5,
    ),
    Movie(
      releaseDate: DateTime(2024, 6, 28),
      id: '762441',
      title: 'A Quiet Place: Day One',
      description:
          '''As New York City is invaded by alien creatures who hunt by sound, a woman named Sam fights to survive with her cat.''',
      posterImageUrl:
          'https://image.tmdb.org/t/p/w342/hU42CRk14JuPEdqZG3AWmagiPAP.jpg',
      status: WatchStatus.toWatch,
      editedAt: DateTime.now(),
      rating: 6.9,
    ),
  ],
);
