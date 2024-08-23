import 'package:movie_tracker/presentation/discover/models/discover_movie.dart';
import 'package:movie_tracker/domain/movie/entities/ai_rec/watch_status.dart';
import 'package:movie_tracker/domain/movie/entities/movie.dart';

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
  ],
);

final List<DiscoverMovies> discoverMoviesData = [
  actionMovies,
  comedyMovies,
  thrillerMovies,
];
