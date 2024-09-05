import 'package:movie_tracker/domain/movie/entities/ai_rec/watch_status.dart';
import 'package:movie_tracker/domain/movie/entities/movie.dart';
import 'package:movie_tracker/presentation/discover/models/discover_movie.dart';

final DiscoverMovies sciFiMovies = DiscoverMovies(
  genre: 'Sci-Fi',
  description:
      'Explore futuristic worlds and mind-bending adventures in our sci-fi selection!',
  movies: [
    Movie.withoutTrailerLink(
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
    Movie.withoutTrailerLink(
      releaseDate: DateTime(2018, 4, 27),
      id: '299536',
      title: 'Avengers: Infinity War',
      description:
          '''As the Avengers and their allies have continued to protect the world from threats too large for any one hero to handle, a new danger has emerged from the cosmic shadows: Thanos. A despot of intergalactic infamy, his goal is to collect all six Infinity Stones, artifacts of unimaginable power, and use them to inflict his twisted will on all of reality. Everything the Avengers have fought for has led up to this moment - the fate of Earth and existence itself has never been more uncertain.''',
      posterImageUrl:
          'https://image.tmdb.org/t/p/w342/7WsyChQLEftFiDOVTGkv3hFpyyt.jpg',
      status: WatchStatus.toWatch,
      editedAt: DateTime.now(),
      rating: 8.2,
    ),
    Movie.withoutTrailerLink(
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
    Movie.withoutTrailerLink(
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
    Movie.withoutTrailerLink(
      id: '1272',
      title: 'Sunshine',
      description:
          '''Fifty years into the future, the sun is dying, and Earth is threatened by arctic temperatures. A team of astronauts is sent to revive the Sun — but the mission fails. Seven years later, a new team is sent to finish the mission as mankind’s last hope.''',
      posterImageUrl:
          'https://image.tmdb.org/t/p/w342/oKGGeJ8qvm0UmClz43VJ31fzPP7.jpg',
      status: WatchStatus.toWatch,
      editedAt: DateTime.now(),
      rating: 7.0,
      releaseDate: DateTime(2007, 4, 5),
    ),
    Movie.withoutTrailerLink(
      releaseDate: DateTime(2017, 10, 15),
      id: '335984',
      title: 'Blade Runner 2049',
      description:
          '''Thirty years after the events of the first film, a new blade runner, LAPD Officer K, unearths a long-buried secret that has the potential to plunge what's left of society into chaos. K's discovery leads him on a quest to find Rick Deckard, a former LAPD blade runner who has been missing for 30 years.''',
      posterImageUrl:
          'https://image.tmdb.org/t/p/w342/gajva2L0rPYkEWjzgFlBXCAVBE5.jpg',
      status: WatchStatus.toWatch,
      editedAt: DateTime.now(),
      rating: 7.6,
    ),
    Movie.withoutTrailerLink(
      releaseDate: DateTime(20221, 10, 22),
      id: '438631',
      title: 'Dune',
      description:
          '''Paul Atreides, a brilliant and gifted young man born into a great destiny beyond his understanding, must travel to the most dangerous planet in the universe to ensure the future of his family and his people. As malevolent forces explode into conflict over the planet's exclusive supply of the most precious resource in existence-a commodity capable of unlocking humanity's greatest potential-only those who can conquer their fear will survive.''',
      posterImageUrl:
          'https://image.tmdb.org/t/p/w342/d5NXSklXo0qyIYkgV94XAgMIckC.jpg',
      status: WatchStatus.toWatch,
      editedAt: DateTime.now(),
      rating: 7.8,
    ),
    Movie.withoutTrailerLink(
      releaseDate: DateTime(2014, 6, 6),
      id: '137113',
      title: 'Edge of Tomorrow',
      description:
          '''Major Bill Cage is an officer who has never seen a day of combat when he is unceremoniously demoted and dropped into combat. Cage is killed within minutes, managing to take an alpha alien down with him. He awakens back at the beginning of the same day and is forced to fight and die again... and again - as physical contact with the alien has thrown him into a time loop.''',
      posterImageUrl:
          'https://image.tmdb.org/t/p/w342/xjw5trHV7Mwo61P0kCTy8paEkgO.jpg',
      status: WatchStatus.toWatch,
      editedAt: DateTime.now(),
      rating: 7.6,
    ),
    Movie.withoutTrailerLink(
      releaseDate: DateTime(2024, 8, 16),
      id: '945961',
      title: 'Alien: Romulus',
      description:
          '''While scavenging the deep ends of a derelict space station, a group of young space colonizers come face to face with the most terrifying life form in the universe.''',
      posterImageUrl:
          'https://image.tmdb.org/t/p/w342/b33nnKl1GSFbao4l3fZDDqsMx0F.jpg',
      status: WatchStatus.toWatch,
      editedAt: DateTime.now(),
      rating: 7.3,
    ),
    Movie.withoutTrailerLink(
      releaseDate: DateTime(2022, 12, 16),
      id: '76600',
      title: 'Avatar: The Way of Water',
      description:
          '''Set more than a decade after the events of the first film, learn the story of the Sully family (Jake, Neytiri, and their kids), the trouble that follows them, the lengths they go to keep each other safe, the battles they fight to stay alive, and the tragedies they endure.''',
      posterImageUrl:
          'https://image.tmdb.org/t/p/w342/t6HIqrRAclMCA60NsSmeqe9RmNV.jpg',
      status: WatchStatus.toWatch,
      editedAt: DateTime.now(),
      rating: 7.6,
    ),
  ],
);
