import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inmac_app/utils/resources/resources.dart';

import 'im_bottom_navigator_bar.dart';

class IMBottomNavigatorHome extends StatefulWidget {
  IMBottomNavigatorHome(
      {Key? key, required this.onTap, required this.pageController, this.pageIndex})
      : super(key: key);

  final Function(int) onTap;
  
  late int? pageIndex;
  final PageController pageController;

  @override
  State<IMBottomNavigatorHome> createState() => _IMBottomNavigatorHomeState();
}

class _IMBottomNavigatorHomeState extends State<IMBottomNavigatorHome> {
  @override
  void dispose() {
    widget.pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return IMBottomNavigatorBar(
      0,
      onTap: (int index) {
        widget.onTap(index);
        widget.pageIndex = null;
        setState(() {});
      },
      items: [
        ItemBottomNav(
            icon: Ics.icHomeLine,
            iconActive: Ics.icHomeFill,
            label: 'Home'),
        ItemBottomNav(
            icon: Ics.icList,
            iconActive: Ics.icList,
            label: ''),
        ItemBottomNav(
            icon: Ics.icTagLine,
            iconActive: Ics.icTagFill,
            label: ''),
        ItemBottomNav(
            icon: Ics.icReportLine,
            iconActive: Ics.icReportFill,
            label: ''),
      ],
    );
  }
}
