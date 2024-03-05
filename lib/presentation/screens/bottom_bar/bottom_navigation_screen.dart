import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:inmac_app/common/widgets/background_widget.dart';
import 'package:inmac_app/common/widgets/im_bottom_navigator_home.dart';
import 'package:inmac_app/common/widgets/im_text.dart';
import 'package:inmac_app/utils/style/app_colors.dart';

@RoutePage()
// ignore: must_be_immutable
class BottomNavigationScreen extends StatefulWidget {
  late int? pageIndex;
  BottomNavigationScreen({super.key, this.pageIndex});

  @override
  State createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  final PageController pageController = PageController();

  final List<Widget> screens = [
    const BackgroundWidget(
      color: AppColors.white1,
      child: IMText(keyText: "HOME SCREEN",),
    ),
    const SizedBox(),
    const SizedBox(),
    const SizedBox()
  ];

  Widget currentScreen = const BackgroundWidget(
    color: AppColors.white1,
    child: Center(child: IMText(keyText: "HOME SCREEN", textAlign: TextAlign.center,)),
  );

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (pageController.hasClients && widget.pageIndex != null) {
      pageController.jumpToPage(widget.pageIndex ?? 0);
    }
    return BackgroundWidget(
      extendBody: false,
      bottomNavigationBar: IMBottomNavigatorHome(
        pageIndex: widget.pageIndex,
        onTap: (i) async{
          widget.pageIndex = null;
          pageController.jumpToPage(i);
        },
        pageController: pageController,
      ),
      child: PageView.builder(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: screens.length,
        allowImplicitScrolling: false,
        onPageChanged: (value) {
          // if (value == 0) {
          // }
        },
        itemBuilder: (_, i) => screens[i],
        // itemBuilder: (_, i) => currentScreen,
      ),
    );
  }

  @override
  void didChangeDependencies() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (pageController.hasClients) {
          pageController.jumpToPage(widget.pageIndex ?? 0);
      }
    });
    super.didChangeDependencies();
  }
}
