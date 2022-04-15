import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_app/themes/app_theme.dart';
import 'package:getx_app/ui/birthday_date/birthday_date_controller.dart';
import 'package:getx_app/ui/widgets/button_gradient_long_two_widget.dart';
import 'package:getx_app/ui/widgets/procent_match_long_widget.dart';

class ProcentsPage extends GetView<BirthdayDatePageController> {
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
        title: Row(
          children: [
            ClipRRect(
              child: Image.asset("assets/images/avatar.png", height: 40.h),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Кристина',
                    style: TextStyle(
                      fontSize: 15,
                      color: AppColors.secondary,
                    ),
                  ),
                  SizedBox(height: 7.h),
                  Row(
                    children: [
                      Text(
                        'Совместимость',
                        style: TextStyle(
                          fontSize: 13,
                          color: Color.fromARGB(255, 171, 175, 185),
                        ),
                      ),
                      SizedBox(width: 4.w),
                      Text(
                        '81%',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(127, 187, 251, 1),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: [
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
            SingleChildScrollView(
              child: Align(
                alignment: FractionalOffset.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: 100.h),
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: ProcentMatchGradientWidget(
                          onPressed: () {},
                          childText: Text(
                            'Любовь',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                          childProcents: Text(
                            '92%',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: ProcentMatchGradientWidget(
                          onPressed: () {},
                          childText: Text(
                            'Сексуальность',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                          childProcents: Text(
                            '77%',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: ProcentMatchGradientWidget(
                          onPressed: () {},
                          childText: Text(
                            'Эмоции',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                          childProcents: Text(
                            '64%',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: ProcentMatchGradientWidget(
                          onPressed: () {},
                          childText: Text(
                            'Интеллект',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                          childProcents: Text(
                            '31%',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: ProcentMatchGradientWidget(
                          onPressed: () {},
                          childText: Text(
                            'Творчество',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                          childProcents: Text(
                            '14%',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: ProcentMatchGradientWidget(
                          onPressed: () {},
                          childText: Text(
                            'Космос',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                          childProcents: Text(
                            '72%',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        // height: MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 27, 17, 167)
                                  .withOpacity(0.05),
                              spreadRadius: 3,
                              blurRadius: 10,
                              offset: Offset(3, 0),
                            )
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Биоритмы и чакры:',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 17,
                                        color:
                                            Color.fromRGBO(255, 139, 173, 1)),
                                  ),
                                  Text(
                                    ' 52%',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                        color:
                                            Color.fromRGBO(127, 187, 251, 1)),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Физический/ Муладхара ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color:
                                            Color.fromRGBO(255, 139, 173, 1)),
                                    textAlign: TextAlign.center,
                                  ),
                                  Text(
                                    '38%',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color:
                                            Color.fromRGBO(127, 187, 251, 1)),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Text(
                                      'не совместимы Инстинкт продолжения рода, уровень страсти ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          color:
                                              Color.fromRGBO(127, 187, 251, 1)),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Эмоциональный/ Свадхистана  ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color:
                                            Color.fromRGBO(255, 139, 173, 1)),
                                    textAlign: TextAlign.center,
                                  ),
                                  Text(
                                    '82%',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color:
                                            Color.fromRGBO(127, 187, 251, 1)),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Text(
                                      ' — почти совпадают Эмоции, радость, сексуальная энергия «Мне нравится партнер»',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          color:
                                              Color.fromRGBO(127, 187, 251, 1)),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 15.h),
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
