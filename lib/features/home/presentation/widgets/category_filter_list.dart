import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors_manager.dart';
import '../../../../core/theming/text_styles.dart';
import '../../../../core/helpers/spacing.dart';

class CategoryFilterList extends StatelessWidget {
  const CategoryFilterList({
    super.key,
    required this.categories,
    required this.selectedIndexNotifier,
  });

  final List<String> categories;
  final ValueNotifier<int> selectedIndexNotifier;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: selectedIndexNotifier,
      builder: (BuildContext context, int selectedIndex, _) {
        return SizedBox(
          height: 28.h,
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return _CategoryChip(
                label: categories[index],
                isSelected: index == selectedIndex,
                onTap: () => selectedIndexNotifier.value = index,
              );
            },
            separatorBuilder: (_, __) => horizontalSpace(8),
            itemCount: categories.length,
          ),
        );
      },
    );
  }
}

class _CategoryChip extends StatelessWidget {
  const _CategoryChip({
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final Color textColor = isSelected ? Colors.white : ColorsManager.primary;
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeOut,
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.r),
          color: isSelected ? ColorsManager.primary : Colors.white,
        ),
        child: Text(
          label,
          style: AppTextStyles.font14Weight600(color: textColor),
        ),
      ),
    );
  }
}
