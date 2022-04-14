import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_app/themes/app_theme.dart';
import 'package:getx_app/ui/my_city/my_city_page_controller.dart';
import 'package:getx_app/ui/widgets/button_gradient_long_two_widget.dart';
import 'package:getx_app/ui/widgets/button_gradient_long_widget.dart';

class MyCityPage extends GetView<MyCityPageController> {
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
        title: Center(
          child: Text('Мой город',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColors.secondary,
              )),
        ),
        actions: <Widget>[
          IconButton(
            icon: Image.asset(
              'assets/icons/direct_messege_appbar.png',
              width: 25.w,
            ),
            onPressed: () => Get.toNamed('/chat_page'),
          ),
          SizedBox(width: 16.w)
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Stack(
          children: [
            Column(
              children: [
                Align(
                  alignment: FractionalOffset.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(top: 110.h),
                    child: GragientLongButtonOne(
                      onPressed: () {},
                      child: Text('Москва'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Align(
                  alignment: FractionalOffset.topCenter,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      primary: Color.fromRGBO(0, 0, 0, 0.25),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Нижний Новгород',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                Align(
                  alignment: FractionalOffset.topCenter,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      primary: Color.fromRGBO(0, 0, 0, 0.25),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Нижний Тагил',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: FractionalOffset.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 20.h),
                child: GragientLongButtonTwo(
                  onPressed: () {},
                  child: Text('Благодарю!'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
