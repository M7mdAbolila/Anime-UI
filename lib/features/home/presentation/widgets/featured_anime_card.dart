import 'package:anime_ui/core/gen/assets.gen.dart';
import 'package:anime_ui/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../models/home_static_data.dart';
import '../../../../core/theming/colors_manager.dart';
import '../../../../core/theming/text_styles.dart';

class FeaturedAnimeCard extends StatelessWidget {
  const FeaturedAnimeCard({super.key, required this.anime});

  final AnimeHighlight anime;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12.r),
              child: Image.asset(
                anime.imagePath,
                fit: BoxFit.cover,
                height: 245.h,
                width: 185.w,
              ),
            ),
            Positioned(
              top: 12.h,
              right: 23.w,
              child: _RatingChip(rating: anime.rating),
            ),
          ],
        ),
        verticalSpace(8),
        Text(
          anime.title,
          style: AppTextStyles.font14Weight700(
            color: ColorsManager.midnightIndigo,
          ),
        ),
        Text(
          anime.genre,
          style: AppTextStyles.font12Weight600(
            color: ColorsManager.lavenderGray,
          ),
        ),
      ],
    );
  }
}

class _RatingChip extends StatelessWidget {
  const _RatingChip({required this.rating});

  final double rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(100.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Assets.svgs.starSubmitReview.svg(width: 12.w, height: 12.w),
          SizedBox(width: 4.w),
          Text(
            rating.toStringAsFixed(1),
            style: AppTextStyles.font12Weight600(
              color: ColorsManager.midnightIndigo,
            ),
          ),
        ],
      ),
    );
  }
}
