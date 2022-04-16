import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_app/themes/app_theme.dart';
import 'package:getx_app/ui/chat/chat_controller_two.dart';
import 'package:getx_app/ui/widgets/button_gradient_widget_one.dart';
import 'package:getx_app/ui/widgets/button_white_widget.dart';

class ChatPageTwo extends GetView<ChatPageTwoController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // extendBodyBehindAppBar: true,
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
                child: Image.asset("assets/images/ava1.png", height: 40.h),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Олеся',
                      style: TextStyle(
                        fontSize: 15,
                        color: AppConfig.secondary,
                      ),
                    ),
                    SizedBox(height: 7.h),
                    Row(
                      children: [
                        Text(
                          'Сейчас в сети',
                          style: TextStyle(
                            fontSize: 13,
                            color: Color.fromARGB(255, 171, 175, 185),
                          ),
                        ),
                        SizedBox(width: 7.w),
                        Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 27, 17, 167)
                                    .withOpacity(0.2),
                                spreadRadius: 0.5,
                                blurRadius: 10,
                                offset: Offset(0, 0),
                              )
                            ],
                          ),
                          child: Image.asset("assets/icons/online_point.png",
                              height: 10.h),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          actions: [],
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Stack(
          alignment: Alignment.center,
          children: [
            Container(
                height: MediaQuery.of(context).size.height * 0.84,
                child: Image.asset("assets/gif/lenny.gif")),
            Positioned.fill(
              // bottom: 40,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width * 0.95,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 27, 17, 167)
                                    .withOpacity(0.05),
                                spreadRadius: 1,
                                blurRadius: 20,
                                offset: Offset(0, 0),
                              )
                            ],
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(25.0))),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(3, 0, 0, 0),
                          child: Row(
                            children: [
                              Image.asset('assets/icons/add_pic.png',
                                  width: 34),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(11, 10, 11, 10),
                                child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.55,
                                    child: TextFormField(
                                      decoration: new InputDecoration.collapsed(
                                        hintText: 'Сообщение',
                                      ),
                                    )),
                              ),
                              Spacer(),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 2, 15, 0),
                                child: Image.asset(
                                    'assets/icons/direct_messege_appbar.png',
                                    height: 20),
                              ),
                            ],
                          ),
                        )),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 0, 60),
                      child: Container(
                        child: SizedBox(
                          height: 40.h,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              GragientShortButtonBase(
                                onPressed: () {},
                                child: Text('Эффектно выглядишь)'),
                              ),
                              SizedBox(width: 11.w),
                              WhiteButton(
                                onPressed: () {},
                                child: Text(
                                  'Хочу тебя прямо сейчас',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                              SizedBox(width: 11.w),
                              WhiteButton(
                                onPressed: () {},
                                child: Text(
                                  'Сегодня настроение смотреть анимэ, хочешь?',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                              SizedBox(width: 11.w),
                              WhiteButton(
                                onPressed: () {},
                                child: Text(
                                  'Готов стартануть, ты где?',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                              SizedBox(width: 11.w),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
