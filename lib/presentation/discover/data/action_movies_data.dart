import 'package:movie_tracker/domain/movie/entities/ai_rec/watch_status.dart';
import 'package:movie_tracker/domain/movie/entities/movie.dart';
import 'package:movie_tracker/presentation/discover/models/discover_movie.dart';

final actionMovies = DiscoverMovies(
  genre: 'Action',
  description:
      'High-octane movies filled with thrilling sequences and intense moments.',
  movies: [
    Movie(
      releaseDate: DateTime(2010, 8, 10),
      id: '27205',
      title: 'Inception',
      description:
          '''Cobb, a skilled thief who commits corporate espionage by infiltrating the subconscious of his targets is offered a chance to regain his old life as payment for a task considered to be impossible: "inception", the implantation of another person's idea into a target's subconscious.''',
      posterImageUrl:
          'https://image.tmdb.org/t/p/w342/ljsZTbVsrQSqZgWeep2B1QiDKuh.jpg',
      status: WatchStatus.toWatch,
      editedAt: DateTime.now(),
      rating: 8.4,
    ),
    Movie(
      releaseDate: DateTime(2023, 8, 9),
      id: '724209',
      title: 'Heart of Stone',
      description:
          '''An intelligence operative for a shadowy global peacekeeping agency races to stop a hacker from stealing its most valuable — and dangerous — weapon.''',
      posterImageUrl:
          'https://image.tmdb.org/t/p/w342/vB8o2p4ETnrfiWEgVxHmHWP9yRl.jpg',
      status: WatchStatus.toWatch,
      editedAt: DateTime.now(),
      rating: 6.8,
    ),
    Movie(
      releaseDate: DateTime(1999, 3, 31),
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
    Movie(
      releaseDate: DateTime(1984, 10, 26),
      id: '218',
      title: 'The Terminator',
      description:
          '''In the post-apocalyptic future, reigning tyrannical supercomputers teleport a cyborg assassin known as the "Terminator" back to 1984 to kill Sarah Connor, whose unborn son is destined to lead insurgents against 21st century mechanical hegemony. Meanwhile, the human-resistance movement dispatches a lone warrior to safeguard Sarah. Can he stop the virtually indestructible killing machine?''',
      posterImageUrl:
          'https://image.tmdb.org/t/p/w342/qvktm0BHcnmDpul4Hz01GIazWPr.jpg',
      status: WatchStatus.toWatch,
      editedAt: DateTime.now(),
      rating: 7.7,
    ),
    Movie(
      releaseDate: DateTime(2008, 8, 28),
      id: '155',
      title: 'The Dark Knight',
      description:
          '''Batman raises the stakes in his war on crime. With the help of Lt. Jim Gordon and District Attorney Harvey Dent, Batman sets out to dismantle the remaining criminal organizations that plague the streets. The partnership proves to be effective, but they soon find themselves prey to a reign of chaos unleashed by a rising criminal mastermind known to the terrified citizens of Gotham as the Joker.''',
      posterImageUrl:
          'https://image.tmdb.org/t/p/w342/qJ2tW6WMUDux911r6m7haRef0WH.jpg',
      status: WatchStatus.toWatch,
      editedAt: DateTime.now(),
      rating: 8.5,
    ),
    Movie(
      releaseDate: DateTime(2015, 5, 14),
      id: '76341',
      title: 'Mad Max: Fury Road',
      description:
          '''An apocalyptic story set in the furthest reaches of our planet, in a stark desert landscape where humanity is broken, and most everyone is crazed fighting for the necessities of life. Within this world exist two rebels on the run who just might be able to restore order.''',
      posterImageUrl:
          'https://image.tmdb.org/t/p/w342/hA2ple9q4qnwxp3hKVNhroipsir.jpg',
      status: WatchStatus.toWatch,
      editedAt: DateTime.now(),
      rating: 7.6,
    ),
    Movie(
      releaseDate: DateTime(2000, 6, 3),
      id: '98',
      title: 'Gladiator',
      description:
          '''In the year 180, the death of emperor Marcus Aurelius throws the Roman Empire into chaos. Maximus is one of the Roman army's most capable and trusted generals and a key advisor to the emperor. As Marcus' devious son Commodus ascends to the throne, Maximus is set to be executed. He escapes, but is captured by slave traders. Renamed Spaniard and forced to become a gladiator, Maximus must battle to the death with other men for the amusement of paying audiences.''',
      posterImageUrl:
          'https://image.tmdb.org/t/p/w342/ty8TGRuvJLPUmAR1H1nRIsgwvim.jpg',
      status: WatchStatus.toWatch,
      editedAt: DateTime.now(),
      rating: 8.2,
    ),
    Movie(
      releaseDate: DateTime(2012, 5, 10),
      id: '24428',
      title: 'The Avengers',
      description:
          '''When an unexpected enemy emerges and threatens global safety and security, Nick Fury, director of the international peacekeeping agency known as S.H.I.E.L.D., finds himself in need of a team to pull the world back from the brink of disaster. Spanning the globe, a daring recruitment effort begins!''',
      posterImageUrl:
          'https://image.tmdb.org/t/p/w342/RYMX2wcKCBAr24UyPD7xwmjaTn.jpg',
      status: WatchStatus.toWatch,
      editedAt: DateTime.now(),
      rating: 7.7,
    ),
    Movie(
      releaseDate: DateTime(2018, 7, 27),
      id: '353081',
      title: 'Mission: Impossible - Fallout',
      description:
          '''When an IMF mission ends badly, the world is faced with dire consequences. As Ethan Hunt takes it upon himself to fulfill his original briefing, the CIA begin to question his loyalty and his motives. The IMF team find themselves in a race against time, hunted by assassins while trying to prevent a global catastrophe.''',
      posterImageUrl:
          'https://image.tmdb.org/t/p/w342/AkJQpZp9WoNdj7pLYSj1L0RcMMN.jpg',
      status: WatchStatus.toWatch,
      editedAt: DateTime.now(),
      rating: 7.4,
    ),
    Movie(
      releaseDate: DateTime(2021, 9, 31),
      id: '370172',
      title: 'No Time to Die',
      description:
          '''Bond has left active service and is enjoying a tranquil life in Jamaica. His peace is short-lived when his old friend Felix Leiter from the CIA turns up asking for help. The mission to rescue a kidnapped scientist turns out to be far more treacherous than expected, leading Bond onto the trail of a mysterious villain armed with dangerous new technology.''',
      posterImageUrl:
          'https://image.tmdb.org/t/p/w342/iUgygt3fscRoKWCV1d0C7FbM9TP.jpg',
      status: WatchStatus.toWatch,
      editedAt: DateTime.now(),
      rating: 7.4,
    ),
  ],
);
