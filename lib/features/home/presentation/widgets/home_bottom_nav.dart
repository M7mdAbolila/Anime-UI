import 'package:anime_ui/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/theming/colors_manager.dart';
import '../../../../core/theming/text_styles.dart';

class HomeBottomNav extends StatelessWidget {
  const HomeBottomNav({super.key});

  static const List<_BottomNavItemData> _items = <_BottomNavItemData>[
    _BottomNavItemData(label: 'Home', assetPath: 'assets/svgs/home-nav.svg'),
    _BottomNavItemData(
      label: 'Library',
      assetPath: 'assets/svgs/books-nav.svg',
    ),
    _BottomNavItemData(
      label: 'Search',
      assetPath: 'assets/svgs/search-nav.svg',
    ),
    _BottomNavItemData(
      label: 'Explore',
      assetPath: 'assets/svgs/circle-nav.svg',
    ),
    _BottomNavItemData(
      label: 'Settings',
      assetPath: 'assets/svgs/setting-nav.svg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.h,
      decoration: const BoxDecoration(color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          for (int i = 0; i < _items.length; i++)
            _BottomNavButton(data: _items[i], isSelected: i == 0),
        ],
      ),
    );
  }
}

class _BottomNavButton extends StatelessWidget {
  const _BottomNavButton({required this.data, required this.isSelected});

  final _BottomNavItemData data;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final Color iconColor = isSelected
        ? Colors.white
        : ColorsManager.lavenderGray;
    return isSelected
        ? Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeOut,
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.r),
                color: isSelected ? ColorsManager.primary : Colors.transparent,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    data.assetPath,
                    width: 20.w,
                    height: 20.w,
                    colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
                  ),

                  if (isSelected) ...[
                    horizontalSpace(8),
                    Text(
                      data.label,
                      style: AppTextStyles.font11Weight500(color: Colors.white),
                    ),
                  ],
                ],
              ),
            ),
          )
        : SvgPicture.asset(
            data.assetPath,
            width: 20.w,
            height: 20.w,
            colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
          );
  }
}

class _BottomNavItemData {
  const _BottomNavItemData({required this.label, required this.assetPath});

  final String label;
  final String assetPath;
}
