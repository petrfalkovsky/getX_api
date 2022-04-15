import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_app/ui/widgets/button_blur_widget.dart';

import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leadingWidth: 60,
        leading: Center(
          child: ProcentsWidget(),
        ),
        title: WhereSlidesWidget(),
        actions: [
          GestureDetector(
              onTap: () => Get.toNamed('/filtres_page'),
              child: Image.asset('assets/icons/menu.png'))
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          BackgroundWidget(),
          SafeArea(
            minimum: const EdgeInsets.only(
              left: 20,
            ),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 26),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SafeArea(
                    minimum: const EdgeInsets.only(
                      right: 20,
                    ),
                    child: Row(
                      children: [
                        Image.asset("assets/icons/star.png", height: 50.h),
                        Text(
                          'Эльвира',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 25,
                              color: Colors.white),
                        ),
                        SizedBox(width: 5.w),
                        Text(
                          '21',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 25,
                              color: Colors.white),
                        ),
                        SizedBox(width: 14.w),
                        Image.asset("assets/icons/online_point.png",
                            width: 10.w),
                        Spacer(),
                        IconButton(
                          icon: Image.asset(
                            "assets/icons/direct_messege.png",
                          ),
                          iconSize: 55,
                          onPressed: () => Get.toNamed('/chat_page'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                  SizedBox(
                    height: 40.h,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        BlurBubble(
                          onPressed: () {},
                          child: Text(
                            '🔥 Страсть',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 16,
                                color: Colors.white),
                          ),
                        ),
                        SizedBox(width: 11.w),
                        BlurBubble(
                          onPressed: () {},
                          child: Text(
                            '🎮  Игры',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 16,
                                color: Colors.white
                                // fontFamily: Inter
                                ),
                          ),
                        ),
                        SizedBox(width: 11.w),
                        BlurBubble(
                          onPressed: () {},
                          child: Text(
                            '💛  Свобода',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 16,
                                color: Colors.white
                                // fontFamily: Inter
                                ),
                          ),
                        ),
                        SizedBox(width: 11.w),
                        BlurBubble(
                          onPressed: () {},
                          child: Text(
                            '🧘‍♂️Просветление',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 16,
                                color: Colors.white
                                // fontFamily: Inter
                                ),
                          ),
                        ),
                        SizedBox(width: 11.w),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        bottomRight: Radius.circular(30),
        bottomLeft: Radius.circular(30),
      ),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/girl1.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class ProcentsWidget extends StatelessWidget {
  const ProcentsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed('/procents_page'),
      child: Text(
        '48%',
        style: TextStyle(
          fontSize: 17,
          color: Colors.white,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

class WhereSlidesWidget extends StatelessWidget {
  const WhereSlidesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Spacer(),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.white.withOpacity(0.95)),
            height: 7.h,
            width: 56.h,
          ),
          SizedBox(width: 10.w),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.white.withOpacity(0.5)),
            height: 7.h,
            width: 56.h,
          ),
          SizedBox(width: 10.w),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.white.withOpacity(0.5)),
            height: 7.h,
            width: 56.h,
          ),
          Spacer(),
        ],
      ),
    );
  }
}
