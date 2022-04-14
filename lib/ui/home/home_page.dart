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
                        RichText(
                          text: TextSpan(
                            text: 'Эльвира',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.white),
                            children: <TextSpan>[
                              TextSpan(
                                text: '',
                                style: DefaultTextStyle.of(context).style,
                              ),
                              TextSpan(
                                  text: ' 21',
                                  style:
                                      TextStyle(fontWeight: FontWeight.normal)),
                            ],
                          ),
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
                        OutlinedButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite,
                            color: Color.fromARGB(255, 235, 9, 47),
                            size: 24.0,
                          ),
                          label: Text('Страсть '),
                          style: OutlinedButton.styleFrom(
                            primary: Colors.white,
                            backgroundColor: Colors.white.withOpacity(0.4),
                            minimumSize: Size(114, 40),
                            maximumSize: Size(300, 40),
                            textStyle: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                              // fontFamily: Inter
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 23),
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
                            side: BorderSide(
                                color: Colors.white.withOpacity(0.2), width: 0),
                          ),
                        ),
                        SizedBox(width: 11.w),
                        ButtonBlur(
                          onPressed: () {},
                          child: Text('Блюр'),
                        ),
                        SizedBox(width: 11.w),
                        OutlinedButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.games,
                            color: Color.fromARGB(255, 8, 8, 8),
                            size: 24.0,
                          ),
                          label: Text('Игры '),
                          style: OutlinedButton.styleFrom(
                            primary: Colors.white,
                            backgroundColor: Colors.white.withOpacity(0.4),
                            minimumSize: Size(114, 40),
                            maximumSize: Size(300, 40),
                            textStyle: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                              // fontFamily: Inter
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 23),
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
                            side: BorderSide(
                                color: Colors.white.withOpacity(0.2), width: 0),
                          ),
                        ),
                        SizedBox(width: 11.w),
                        OutlinedButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite,
                            color: Color.fromARGB(255, 186, 235, 9),
                            size: 24.0,
                          ),
                          label: Text('Просветление '),
                          style: OutlinedButton.styleFrom(
                            primary: Colors.white,
                            backgroundColor: Colors.white.withOpacity(0.4),
                            minimumSize: Size(114, 40),
                            maximumSize: Size(300, 40),
                            textStyle: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                              // fontFamily: Inter
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 23),
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
                            side: BorderSide(
                                color: Colors.white.withOpacity(0.2), width: 0),
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
    return Text(
      '48%',
      style: TextStyle(
        fontSize: 17,
        color: Colors.white,
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
