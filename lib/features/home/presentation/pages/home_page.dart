import 'package:anime_ui/core/gen/assets.gen.dart';
import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors_manager.dart';
import '../models/home_static_data.dart';
import '../widgets/category_filter_list.dart';
import '../widgets/featured_anime_section.dart';
import '../widgets/home_bottom_nav.dart';
import '../widgets/home_header_section.dart';
import '../widgets/top_characters_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ValueNotifier<int> _selectedCategoryNotifier = ValueNotifier<int>(0);

  @override
  void dispose() {
    _selectedCategoryNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              ColorsManager.periwinkle.withValues(alpha: 0.7),
              Colors.white,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Assets.svgs.backgroundStar.svg(),
            ),
            SafeArea(
              child: CustomScrollView(
                physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics(),
                ),
                slivers: [
                  SliverToBoxAdapter(child: verticalSpace(24)),

                  const SliverToBoxAdapter(child: HomeHeaderSection()),
                  SliverToBoxAdapter(child: verticalSpace(24)),
                  SliverToBoxAdapter(
                    child: CategoryFilterList(
                      categories: HomeStaticData.categories,
                      selectedIndexNotifier: _selectedCategoryNotifier,
                    ),
                  ),
                  SliverToBoxAdapter(child: verticalSpace(20)),
                  SliverToBoxAdapter(
                    child: FeaturedAnimeSection(
                      selectedCategoryNotifier: _selectedCategoryNotifier,
                    ),
                  ),
                  SliverToBoxAdapter(child: verticalSpace(24)),
                  const SliverToBoxAdapter(
                    child: TopCharactersSection(
                      characters: HomeStaticData.characters,
                    ),
                  ),
                  SliverToBoxAdapter(child: verticalSpace(24)),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const HomeBottomNav(),
    );
  }
}
