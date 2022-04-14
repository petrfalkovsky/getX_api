import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_app/themes/app_theme.dart';
import 'package:getx_app/ui/interests/interests_controller.dart';
import 'package:getx_app/ui/widgets/age_widget.dart';
import 'package:getx_app/ui/widgets/button_gradient_long_widget.dart';
import 'package:getx_app/ui/widgets/button_gradient_widget_one.dart';
import 'package:getx_app/ui/widgets/button_gradient_widget_two.dart';
import 'package:getx_app/ui/widgets/button_white_long_widget.dart';
import 'package:getx_app/ui/widgets/button_white_widget.dart';

class FiltresPage extends GetView<InterestsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        // leadingWidth: 60,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back_ios_new_rounded,
              color: Color.fromRGBO(36, 40, 51, 1)),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 20),
            child: GragientButtonOne(
              onPressed: () {},
              child: Text('Москва',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 255, 255, 255),
                  )),
            ),
          ),
        ],
        title: Padding(
          padding: const EdgeInsets.only(left: 50),
          child: Text('Tandem',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColors.secondary,
              )),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Align(
                alignment: FractionalOffset.topCenter,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 100, 20, 10),
                  child: Column(
                    children: [
                      SizedBox(height: 10.h),
                      Stack(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 1,
                                child: WhiteButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Парни',
                                    style: TextStyle(
                                        color:
                                            Color.fromRGBO(127, 187, 251, 1)),
                                  ),
                                ),
                              ),
                              SizedBox(width: 80.w),
                              Expanded(
                                flex: 1,
                                child: WhiteButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Девушки',
                                    style: TextStyle(
                                        color:
                                            Color.fromRGBO(127, 187, 251, 1)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Center(
                            child: GragientButtonTwo(
                              onPressed: () {},
                              child: Text(
                                'Все',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 18.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 1,
                            child: GragientButtonTwo(
                              onPressed: () {},
                              child: Text(
                                '🔥 Страсть',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Expanded(
                            flex: 1,
                            child: WhiteButton(
                              onPressed: () {},
                              child: Text(
                                '🍹 Вечеринка',
                                style: TextStyle(
                                    color: Color.fromRGBO(127, 187, 251, 1)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 18.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 1,
                            child: WhiteButton(
                              onPressed: () {},
                              child: Text(
                                '👼🏻 Семья',
                                style: TextStyle(
                                    color: Color.fromRGBO(127, 187, 251, 1)),
                              ),
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Expanded(
                            flex: 1,
                            child: GragientButtonTwo(
                              onPressed: () {},
                              child: Text(
                                '🎮  Игры',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 18.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 1,
                            child: GragientButtonTwo(
                              onPressed: () {},
                              child: Text(
                                '🎨 Творчество',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Expanded(
                            flex: 1,
                            child: WhiteButton(
                              onPressed: () {},
                              child: Text(
                                '🦋 Развитие',
                                style: TextStyle(
                                    color: Color.fromRGBO(127, 187, 251, 1)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 18.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 1,
                            child: WhiteButton(
                              onPressed: () {},
                              child: Text(
                                '💵 Бизнес',
                                style: TextStyle(
                                    color: Color.fromRGBO(127, 187, 251, 1)),
                              ),
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Expanded(
                            flex: 1,
                            child: GragientButtonTwo(
                              onPressed: () {},
                              child: Text(
                                '🔋️ Технологии',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 18.h),
                      ButtonWhiteLong(
                        onPressed: () {},
                        child: Text(
                          '🦄 Обменяться подарками',
                          style: TextStyle(
                              color: Color.fromRGBO(127, 187, 251, 1)),
                        ),
                      ),
                      SizedBox(height: 18.h),
                      ButtonWhiteLong(
                        onPressed: () {},
                        child: Text(
                          '🕊 Поделиться историей ',
                          style: TextStyle(
                              color: Color.fromRGBO(127, 187, 251, 1)),
                        ),
                      ),
                      SizedBox(height: 18.h),
                      GragientLongButtonOne(
                        onPressed: () {},
                        child: Text('⛵ Приключение'),
                      ),
                      SizedBox(height: 18.h),
                      ButtonWhiteLong(
                        onPressed: () {},
                        child: Text(
                          '🏖 Совместный Chill ',
                          style: TextStyle(
                              color: Color.fromRGBO(127, 187, 251, 1)),
                        ),
                      ),
                      SizedBox(height: 18.h),
                      Row(
                        children: [
                          Text(
                            '21 год',
                            style: TextStyle(
                                color: Color.fromRGBO(127, 187, 251, 1),
                                fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Text(
                            '34 года',
                            style: TextStyle(
                                color: Color.fromRGBO(255, 139, 173, 1),
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      AgeSetWidget(),
                      SizedBox(height: 10.h),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: FractionalOffset.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 20.h),
                child: GragientLongButtonTwo(
                  onPressed: () {},
                  child: Text('Применить'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
