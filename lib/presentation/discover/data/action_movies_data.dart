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
  ],
);