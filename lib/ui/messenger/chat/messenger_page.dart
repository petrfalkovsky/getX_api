import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_app/ui/messenger/chat/chat_controller.dart';

class MessengerPage extends GetView<MessengerController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
            child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 60, 20, 50),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () => Get.toNamed('/chat_page'),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 13),
                      child:
                          Image.asset('assets/images/ava2.png', width: 100.w),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 13),
                    child: Image.asset('assets/images/ava3.png', width: 100.w),
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 13),
                        child:
                            Image.asset('assets/images/ava6.png', width: 100.w),
                      ),
                      Positioned(
                          bottom: 5,
                          child: Image.asset('assets/icons/online_point.png',
                              width: 15.w)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 13),
                    child: Image.asset('assets/images/ava9.png', width: 100.w),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 25),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 13),
                    child: Image.asset('assets/images/ava12.png', width: 100.w),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 13),
                    child: Image.asset('assets/images/ava4.png', width: 100.w),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 13),
                    child: Image.asset('assets/images/ava7.png', width: 100.w),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 13),
                    child: Image.asset('assets/images/ava10.png', width: 100.w),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 60, 20, 50),
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      GestureDetector(
                        onTap: () => Get.toNamed('/chat_page_two'),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 13),
                          child: Image.asset('assets/images/ava1.png',
                              width: 100.w),
                        ),
                      ),
                      Positioned(
                          bottom: 5,
                          child: Image.asset('assets/icons/online_point.png',
                              width: 15.w)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 13),
                    child: Image.asset('assets/images/ava5.png', width: 100.w),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 13),
                    child: Image.asset('assets/images/ava8.png', width: 100.w),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 13),
                    child: Image.asset('assets/images/ava11.png', width: 100.w),
                  ),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
