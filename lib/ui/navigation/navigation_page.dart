import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/ui/home/home_page.dart';
import 'package:getx_app/ui/messenger/messenger_page.dart';
import 'package:getx_app/ui/profile/profile_page.dart';

import 'navigation_controller.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: [
                HomePage(),
// todo если понадобится сделать четвертую вкладку в навигации, можно подключить тут
                // PostsPage(),
                AlertsPage(),
                AccountPage(),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                  label: 'Искать',
                  icon: Image.asset(
                    "assets/icons/home.png",
                    height: 40,
                    width: 40,
                  )),
              BottomNavigationBarItem(
                  label: 'Сообщения',
                  icon: Image.asset(
                    "assets/icons/messenger.png",
                    height: 40,
                    width: 40,
                  )),
              BottomNavigationBarItem(
                  label: 'Профиль',
                  icon: Image.asset(
                    "assets/icons/unicorn.png",
                    height: 40,
                    width: 40,
                  )),

              // todo если понадобится сделать четвертую вкладку в навигации, можно подключить тут
              // BottomNavigationBarItem(
              //                 label: 'Home',
              //                 icon: Image.asset(
              //                   "assets/icons/home.png",
              //                   height: 40,
              //                   width: 40,
              //                 )),
            ],
          ),
        );
      },
    );
  }
}
