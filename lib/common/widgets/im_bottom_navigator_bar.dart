import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inmac_app/utils/style/app_colors.dart';

import 'im_icon.dart';
import 'im_text.dart';

class IMBottomNavigatorBar extends StatelessWidget {
  const IMBottomNavigatorBar(
    this.index, {
    Key? key,
    required this.onTap,
    required this.items,
  }) : super(key: key);

  final int index;
  final Function(int)? onTap;
  final List<ItemBottomNav> items;

  @override
  Widget build(BuildContext context) {
    List<BottomNavigationBarItem> itemBottoms = <BottomNavigationBarItem>[];
    for (final element in items) {
      itemBottoms.add(BottomNavigationBarItem(
          icon: Container(
            height: 70.h,
            padding: EdgeInsets.only(top: 12.h),
            width: MediaQuery.of(context).size.width / 4,
            child: Column(
              children: [
                IMIcon(
                  index == items.indexOf(element)
                      ? element.iconActive
                      : element.icon,
                  width: index == items.indexOf(element) ? 32.w : 24.w,
                  height: index == items.indexOf(element) ? 32.h : 24.h,
                  // color: index == items.indexOf(element)
                  //     ? AppColors.blue
                  //     : AppColors.lightGrey,
                ),
                const SizedBox(height: 4),
                IMText(
                  keyText: element.label,
                  style: TextStyle(
                    color: index == items.indexOf(element)
                        ? AppColors.black
                        : AppColors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    // height: 18 / 12,
                  ),
                )
              ],
            ),
          ),
          label: ''));
    }
    return BottomNavigationBar(
      elevation: 5,
      currentIndex: index,
      selectedItemColor: AppColors.black,
      selectedFontSize: 0,
      backgroundColor: AppColors.white,
      unselectedItemColor: AppColors.black,
      unselectedFontSize: 0,
      onTap: onTap,
      type: BottomNavigationBarType.fixed,
      items: itemBottoms,
    );
  }
}

class ItemBottomNav {
  String icon;
  String iconActive;
  String label;

  ItemBottomNav(
      {required this.icon, required this.iconActive, required this.label});
}
