import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_app/themes/app_theme.dart';
import 'package:getx_app/ui/interests/interests_controller.dart';
import 'package:getx_app/ui/widgets/button_gradient_long_widget.dart';
import 'package:getx_app/ui/widgets/button_gradient_widget_two.dart';
import 'package:getx_app/ui/widgets/button_white_long_widget.dart';
import 'package:getx_app/ui/widgets/button_white_widget.dart';

class InterestsPage extends GetView<InterestsController> {
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
        title: Padding(
          padding: const EdgeInsets.only(left: 50),
          child: Text('🌈  Интересы',
              style: TextStyle(
                fontSize: 20,
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
                  padding: EdgeInsets.fromLTRB(30, 100, 30, 10),
                  child: Column(
                    children: [
                      SizedBox(height: 10.h),
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
                      SizedBox(height: 10.h),
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
                      SizedBox(height: 10.h),
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
                      SizedBox(height: 10.h),
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
                      SizedBox(height: 10.h),
                      ButtonWhiteLong(
                        onPressed: () {},
                        child: Text(
                          '🦄 Обменяться подарками',
                          style: TextStyle(
                              color: Color.fromRGBO(127, 187, 251, 1)),
                        ),
                      ),
                      SizedBox(height: 10.h),
                      ButtonWhiteLong(
                        onPressed: () {},
                        child: Text(
                          '🕊 Поделиться историей ',
                          style: TextStyle(
                              color: Color.fromRGBO(127, 187, 251, 1)),
                        ),
                      ),
                      SizedBox(height: 10.h),
                      GragientLongButtonOne(
                        onPressed: () {},
                        child: Text('⛵ Приключение'),
                      ),
                      SizedBox(height: 10.h),
                      ButtonWhiteLong(
                        onPressed: () {},
                        child: Text(
                          '🏖 Совместный Chill ',
                          style: TextStyle(
                              color: Color.fromRGBO(127, 187, 251, 1)),
                        ),
                      ),
                      SizedBox(height: 10.h),
                      SizedBox(height: 10.h),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: FractionalOffset.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 40.h),
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
