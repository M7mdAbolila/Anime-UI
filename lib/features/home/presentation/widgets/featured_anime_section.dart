import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../models/home_static_data.dart';
import 'featured_anime_card.dart';

class FeaturedAnimeSection extends StatefulWidget {
  const FeaturedAnimeSection({
    super.key,
    required this.selectedCategoryNotifier,
  });

  final ValueNotifier<int> selectedCategoryNotifier;

  @override
  State<FeaturedAnimeSection> createState() => _FeaturedAnimeSectionState();
}

class _FeaturedAnimeSectionState extends State<FeaturedAnimeSection> {
  late final PageController _pageController;
  final ValueNotifier<double> _pageOffset = ValueNotifier<double>(0);
  int? _lastCategoryIndex;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.72)
      ..addListener(_handlePageChange);
  }

  void _handlePageChange() {
    final double? page = _pageController.page;
    if (page != null) {
      _pageOffset.value = page;
    }
  }

  @override
  void dispose() {
    _pageController
      ..removeListener(_handlePageChange)
      ..dispose();
    _pageOffset.dispose();
    super.dispose();
  }

  List<AnimeHighlight> _resolveHighlights(int selectedIndex) {
    final String selectedCategory = HomeStaticData.categories[selectedIndex];
    if (selectedCategory == 'All') {
      return HomeStaticData.animeHighlights;
    }
    return HomeStaticData.animeHighlights
        .where(
          (AnimeHighlight anime) => anime.categories.contains(selectedCategory),
        )
        .toList(growable: false);
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: widget.selectedCategoryNotifier,
      builder: (BuildContext context, int selectedIndex, _) {
        if (_lastCategoryIndex != selectedIndex) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (!mounted) return;
            if (_pageController.hasClients) {
              _pageController.animateToPage(
                0,
                duration: const Duration(milliseconds: 220),
                curve: Curves.easeOut,
              );
            }
            _pageOffset.value = 0;
          });
          _lastCategoryIndex = selectedIndex;
        }

        final List<AnimeHighlight> highlights = _resolveHighlights(
          selectedIndex,
        );

        return ValueListenableBuilder<double>(
          valueListenable: _pageOffset,
          builder: (BuildContext context, double offset, _) {
            return SizedBox(
              height: 295.h,
              child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: highlights.length,
                itemBuilder: (BuildContext context, int index) {
                  return FeaturedAnimeCard(anime: highlights[index]);
                },
                separatorBuilder: (_, __) => horizontalSpace(14),
              ),
            );
          },
        );
      },
    );
  }
}
