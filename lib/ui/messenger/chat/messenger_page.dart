import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_app/ui/messenger/chat/chat_controller.dart';

class MessengerPage extends GetView<MessengerController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FirstWidget(),
            SecondColumn(),
            ThirdColumn(),
          ],
        ),
      ),
    );
  }
}

class FirstWidget extends StatelessWidget {
  const FirstWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60, right: 8),
      child: Column(
        children: [
          GestureDetector(
            onTap: () => Get.toNamed('/chat_page'),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 13),
              child: Image.asset('assets/images/ava2.png', width: 100.w),
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
                child: Image.asset('assets/images/ava6.png', width: 100.w),
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
    );
  }
}

class SecondColumn extends StatelessWidget {
  const SecondColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 20, 8, 25),
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
    );
  }
}

class ThirdColumn extends StatelessWidget {
  const ThirdColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 60, 0, 50),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              GestureDetector(
                onTap: () => Get.toNamed('/chat_page_two'),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 13),
                  child: Image.asset('assets/images/ava1.png', width: 100.w),
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
    );
  }
}
