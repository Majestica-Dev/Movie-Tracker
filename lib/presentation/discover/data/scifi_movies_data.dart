import 'package:movie_tracker/domain/movie/entities/ai_rec/watch_status.dart';
import 'package:movie_tracker/domain/movie/entities/movie.dart';
import 'package:movie_tracker/presentation/discover/models/discover_movie.dart';

final DiscoverMovies sciFiMovies = DiscoverMovies(
  genre: 'Sci-Fi',
  description:
      'Explore futuristic worlds, cutting-edge technology, and mind-bending adventures. Discover the limitless possibilities of the universe with our sci-fi selection!',
  movies: [
    Movie(
      id: '157336',
      title: 'Interstellar',
      description:
          '''The adventures of a group of explorers who make use of a newly discovered wormhole to surpass the limitations on human space travel and conquer the vast distances involved in an interstellar voyage.''',
      posterImageUrl:
          'https://image.tmdb.org/t/p/w342/gEU2QniE6E77NI6lCU6MxlNBvIx.jpg',
      status: WatchStatus.toWatch,
      editedAt: DateTime.now(),
      rating: 8.4,
      releaseDate: DateTime(2014, 11, 6),
    ),
    Movie(
      id: '329865',
      title: 'Arrival',
      description:
          '''Taking place after alien crafts land around the world, an expert linguist is recruited by the military to determine whether they come in peace or are a threat.''',
      posterImageUrl:
          'https://image.tmdb.org/t/p/w342/pEzNVQfdzYDzVK0XqxERIw2x2se.jpg',
      status: WatchStatus.toWatch,
      editedAt: DateTime.now(),
      rating: 7.6,
      releaseDate: DateTime(2016, 11, 11),
    ),
    Movie(
      id: '801688',
      title: 'Kalki 2898-AD',
      description:
          '''In the year 2898 AD, around 6000 years after Kurukshetra war, Ashwatthama gears up for his final battle of redemption at the sign of hope in a dystopian world and Bhairava, a wisecracking and self-interested bounty hunter, tired of the perilous life becomes the hurdle in the process.''',
      posterImageUrl:
          'https://image.tmdb.org/t/p/w342/rstcAnBeCkxNQjNp3YXrF6IP1tW.jpg',
      status: WatchStatus.toWatch,
      editedAt: DateTime.now(),
      rating: 7.0,
      releaseDate: DateTime(2024, 6, 27),
    ),
    Movie(
      id: '801688',
      title: 'Kalki 2898-AD',
      description:
          '''In the year 2898 AD, around 6000 years after Kurukshetra war, Ashwatthama gears up for his final battle of redemption at the sign of hope in a dystopian world and Bhairava, a wisecracking and self-interested bounty hunter, tired of the perilous life becomes the hurdle in the process.''',
      posterImageUrl:
          'https://image.tmdb.org/t/p/w342/rstcAnBeCkxNQjNp3YXrF6IP1tW.jpg',
      status: WatchStatus.toWatch,
      editedAt: DateTime.now(),
      rating: 7.0,
      releaseDate: DateTime(2024, 6, 27),
    ),
  ],
);
