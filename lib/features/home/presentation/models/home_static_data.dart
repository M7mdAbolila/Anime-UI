import 'package:flutter/foundation.dart';

@immutable
class AnimeHighlight {
  const AnimeHighlight({
    required this.title,
    required this.genre,
    required this.description,
    required this.imagePath,
    required this.rating,
    required this.categories,
  });

  final String title;
  final String genre;
  final String description;
  final String imagePath;
  final double rating;
  final List<String> categories;
}

@immutable
class CharacterSpotlight {
  const CharacterSpotlight({
    required this.name,
    required this.anime,
    required this.imagePath,
  });

  final String name;
  final String anime;
  final String imagePath;
}

class HomeStaticData {
  static const List<String> categories = <String>[
    'All',
    'Popular',
    'Trending',
    'New Releases',
    'Top Rated',
  ];

  static const List<AnimeHighlight> animeHighlights = <AnimeHighlight>[
    AnimeHighlight(
      title: 'Detective Conan',
      genre: 'Mystery',
      description:
          'New "Detective Conan" One-Eyed Flashback movie main visual revealed.',
      imagePath: 'assets/images/cover1.png',
      rating: 5.0,
      categories: <String>['All', 'Popular', 'Trending'],
    ),
    AnimeHighlight(
      title: 'Hunter x Hunter',
      genre: 'Adventure',
      description: 'Gon and Killua ready to dive back into Greed Island.',
      imagePath: 'assets/images/cover2.png',
      rating: 4.9,
      categories: <String>['All', 'Trending', 'Top Rated'],
    ),
    AnimeHighlight(
      title: 'Jujutsu Kaisen',
      genre: 'Action',
      description: 'Sorcerers unite as curses rise across Japan.',
      imagePath: 'assets/images/cover3.png',
      rating: 4.8,
      categories: <String>['All', 'New Releases', 'Popular'],
    ),
  ];

  static const List<CharacterSpotlight> characters = <CharacterSpotlight>[
    CharacterSpotlight(
      name: 'Gon Freecss',
      anime: 'Hunter x Hunter',
      imagePath: 'assets/images/character1.png',
    ),
    CharacterSpotlight(
      name: 'Naruto Uzumaki',
      anime: 'Naruto',
      imagePath: 'assets/images/character1.png',
    ),
    CharacterSpotlight(
      name: 'Monkey D. Luffy',
      anime: 'One Piece',
      imagePath: 'assets/images/character1.png',
    ),
    CharacterSpotlight(
      name: 'Tanjiro Kamado',
      anime: 'Demon Slayer',
      imagePath: 'assets/images/character1.png',
    ),
  ];
}
