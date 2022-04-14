import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_app/themes/app_theme.dart';
import 'package:getx_app/ui/chat/chat_controller.dart';
import 'package:getx_app/ui/chat/bubbles_widget.dart';
import 'package:getx_app/ui/chat/voice_bubble.dart';

class ChatPage extends GetView<ChatPageController> {
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
            ListView(
              children: [
                UserProfileBubble(
                  onPressed: () {},
                  child: Text(
                    'Они сошлись. Волна и камень, Стихи и проза, лед и пламень, Не столь различны меж собой. ',
                    style: const TextStyle(
                      color: AppColors.textLigth,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SecondHalfUserProfileBubble(
                  onPressed: () {},
                  child: Text(
                    'Хочу тебя прямо сейчас ️👄',
                    style: const TextStyle(
                      color: AppColors.textDark,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SecondUserProfileBubble(
                  onPressed: () {},
                  child: Text(
                    'Что вам дано, то не влечет Вас непрестанно змий зовет К себе, к таинственному древу. Запретный плод вам подавай, А без того вам рай - не рай',
                    style: const TextStyle(
                      color: AppColors.textDark,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                UserProfileBubble(
                  onPressed: () {},
                  child: Text(
                    'Это так прелестно',
                    style: const TextStyle(
                      color: AppColors.textLigth,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                VoiceLightBubble(),
                VoiceDarkBubble(),
              ],
            ),
            Positioned(
              bottom: 40,
              child: Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width * 0.95,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color:
                              Color.fromARGB(255, 27, 17, 167).withOpacity(0.2),
                          spreadRadius: 0.5,
                          blurRadius: 10,
                          offset: Offset(0, 0),
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(25.0))),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(3, 0, 0, 0),
                    child: Row(
                      children: [
                        Image.asset('assets/icons/add_pic.png', width: 34),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(11, 10, 11, 10),
                          child: Container(
                              width: MediaQuery.of(context).size.width * 0.55,
                              child: TextFormField(
                                decoration: new InputDecoration.collapsed(
                                  hintText: 'Сообщение',
                                ),
                              )),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 2, 15, 0),
                          child: Image.asset(
                              'assets/icons/direct_messege_appbar.png',
                              height: 20),
                        ),
                      ],
                    ),
                  )),
            )
          ],
        ));
  }
}
