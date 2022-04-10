import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

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
        actions: [Image.asset('assets/icons/menu.png')],
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
                        Image.asset("assets/icons/online_point.png",
                            height: 50.h),
                        Spacer(),
                        Image.asset("assets/icons/direct_messege.png",
                            height: 55.h),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                  SizedBox(
                    height: 40.h,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite,
                            color: Color.fromARGB(255, 235, 9, 47),
                            size: 24.0,
                          ),
                          label: Text('Страсть'),
                          style: ButtonStyle(
                              minimumSize:
                                  MaterialStateProperty.all(Size(114, 40)),
                              maximumSize:
                                  MaterialStateProperty.all(Size(300, 40)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              )),
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.white.withOpacity(0.4)),
                              padding: MaterialStateProperty.all(
                                  EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 33)),
                              textStyle: MaterialStateProperty.all(
                                TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.white),
                              )),
                        ),
                        SizedBox(width: 11.w),
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.games,
                            color: Color.fromARGB(255, 17, 16, 16),
                            size: 24.0,
                          ),
                          label: Text('Игры'),
                          style: ButtonStyle(
                              minimumSize:
                                  MaterialStateProperty.all(Size(114, 40)),
                              maximumSize:
                                  MaterialStateProperty.all(Size(300, 40)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              )),
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.white.withOpacity(0.4)),
                              padding: MaterialStateProperty.all(
                                  EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 33)),
                              textStyle: MaterialStateProperty.all(
                                TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.white),
                              )),
                        ),
                        SizedBox(width: 11.w),
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite,
                            color: Color.fromARGB(255, 228, 211, 61),
                            size: 24.0,
                          ),
                          label: Text('Просветление'),
                          style: ButtonStyle(
                              minimumSize:
                                  MaterialStateProperty.all(Size(114, 40)),
                              maximumSize:
                                  MaterialStateProperty.all(Size(300, 40)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              )),
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.white.withOpacity(0.4)),
                              padding: MaterialStateProperty.all(
                                  EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 33)),
                              textStyle: MaterialStateProperty.all(
                                TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.white),
                              )),
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
