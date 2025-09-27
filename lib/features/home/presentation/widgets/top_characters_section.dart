import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors_manager.dart';
import '../../../../core/theming/text_styles.dart';
import '../models/home_static_data.dart';

class TopCharactersSection extends StatelessWidget {
  const TopCharactersSection({super.key, required this.characters});

  final List<CharacterSpotlight> characters;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Text(
            'Top Characters',
            style: AppTextStyles.font24Weight700(color: Colors.black),
          ),
        ),
        verticalSpace(16),
        SizedBox(
          height: 155.h,
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            itemCount: characters.length,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            separatorBuilder: (_, __) => horizontalSpace(16),
            itemBuilder: (BuildContext context, int index) =>
                _CharacterCard(character: characters[index]),
          ),
        ),
      ],
    );
  }
}

class _CharacterCard extends StatelessWidget {
  const _CharacterCard({required this.character});

  final CharacterSpotlight character;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 92.w,
          height: 92.h,
          decoration: const BoxDecoration(shape: BoxShape.circle),
          child: ClipOval(
            child: Image.asset(character.imagePath, fit: BoxFit.cover),
          ),
        ),
        verticalSpace(12),
        Text(
          character.name,
          textAlign: TextAlign.center,
          style: AppTextStyles.font16Weight600(
            color: ColorsManager.midnightIndigo,
          ),
        ),
        verticalSpace(4),
        Text(
          character.anime,
          textAlign: TextAlign.center,
          style: AppTextStyles.font14Weight600(
            color: ColorsManager.lavenderGray,
          ),
        ),
      ],
    );
  }
}
