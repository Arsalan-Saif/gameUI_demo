import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../config/size_config.dart';
import '../../../config/theme.dart';
import '../controllers/home_controller.dart';
import 'header_icon.dart';

class CustomeAppBar extends GetView<HomeController>
    implements PreferredSizeWidget {
  const CustomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      // snap: true,
      // floating: true,
      leadingWidth: double.maxFinite,
      backgroundColor: primaryBackgroundColor,
      leading: Container(
        // decoration: BoxDecoration(
        //     color: primaryBackgroundColor.withOpacity(0.5),
        //     backgroundBlendMode: BlendMode.darken),
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.arrow_back,
                  // size: 20,
                ),
                const SizedBox(width: 10),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2, color: primaryColor),
                      shape: BoxShape.circle,
                      image: const DecorationImage(
                          image: AssetImage('assets/Rectangle 13.png'))),
                ),
                const SizedBox(width: 10),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Lee Sin',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'THE BLIND MONK',
                      style: TextStyle(
                          fontSize: 12,
                          color: textColor,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins'),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(width: 10),
            const Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 5),
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      HeaderIcon(
                          label: "P", image: 'assets/Action Buttons.png'),
                      HeaderIcon(
                          label: "Q", image: 'assets/Action Buttons2.png'),
                      HeaderIcon(
                          label: "W", image: 'assets/Action Buttons3.png'),
                      HeaderIcon(
                          label: "E", image: 'assets/Action Buttons4.png'),
                      HeaderIcon(
                          label: "R", image: 'assets/Action Buttons5.png'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      flexibleSpace: Stack(
        children: [
          Image(
            height: SizeConfig.screenHeight! * 0.23,
            image: const AssetImage('assets/Rectangle 20.png'),
            fit: BoxFit.cover,
          ),
          Container(
            height: SizeConfig.screenHeight! * 0.23,
            width: double.maxFinite,
            decoration: const BoxDecoration(
              gradient: RadialGradient(
                center: Alignment(1.55, 1.10),
                radius: 1.78,
                colors: [Color(0xCC01131B), Color(0xFF01131B)],
              ),
            ),
          )
        ],
      ),
      bottom: TabBar(
          isScrollable: true,
          tabAlignment: TabAlignment.start,
          splashFactory: NoSplash.splashFactory,
          // onTap: (index) => controller.onTabIndex(index),
          controller: controller.tabController,
          labelPadding:
              const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          labelColor: primaryColor,
          unselectedLabelColor: textColorDark,
          dividerColor: Colors.transparent,
          indicatorColor: Colors.transparent,
          enableFeedback: false,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorWeight: 2,
          // splashBorderRadius: BorderRadius.circular(48),
          indicatorPadding: const EdgeInsets.only(right: 10, left: 10, top: 60),
          // indicator: const UnderlineTabIndicator(
          //     borderRadius: BorderRadius.only(
          //       topLeft: Radius.circular(5),
          //       topRight: Radius.circular(5),
          //     ),
          //     borderSide: BorderSide(width: 5.0, color: primaryColor),
          //     insets: EdgeInsets.symmetric(horizontal: 15.0)),
          indicator: BoxDecoration(
              boxShadow: shadowList,
              borderRadius: BorderRadius.circular(2),
              border: const Border(
                bottom: BorderSide(color: primaryColor, width: 2),
              )),
          tabs: const [
            Text(
              "Overview",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'ITC-regular',
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              "Builds",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "Leaderboard",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "Matchup",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "Trends",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
          ]),
      // title: const
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize =>
      Size(double.maxFinite, SizeConfig.screenHeight! * 0.14);
}
