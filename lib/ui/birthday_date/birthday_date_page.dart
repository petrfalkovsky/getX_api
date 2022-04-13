import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_app/themes/app_theme.dart';
import 'package:getx_app/ui/birthday_date/birthday_date_controller.dart';
import 'package:getx_app/ui/widgets/button_gradient_long_widget.dart';

class BirthdayDatePage extends GetView<BirthdayDatePageController> {
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
          child: Text('Дата рождения',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColors.secondary,
              )),
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
            Align(
              alignment: FractionalOffset.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 110.h),
                child: GragientLongButtonOne(
                  onPressed: () {},
                  child: Text('01 Марта 1927'),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Align(
                alignment: FractionalOffset.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: 150.h),
                  child: Column(
                    children: [
                      SizedBox(height: 25.h),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        // height: MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 27, 17, 167)
                                  .withOpacity(0.1),
                              spreadRadius: 3,
                              blurRadius: 10,
                              offset: Offset(3, 0),
                            )
                          ],
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                text: 'Характер, сила воли — 1111',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 17,
                                    color: Color.fromARGB(255, 204, 120, 120)),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: '\n',
                                  ),
                                  TextSpan(
                                    text:
                                        '«Лидер» — спокойный и всегда уверенный в себе. Это две главные черты. Негромко, но весомо заявляет свое мнение, заставляя прислушаться или даже притихнуть остальных. Жесткость проявляет редко, но метко. Она и так в нем чувствуется. Большинство самых богатых и влиятельных людей из политики, бизнеса, военной сферы и спорта имеют характеры 1111 и 11111.',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 17,
                                        color: Color.fromARGB(255, 0, 0, 0)),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        // height: MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 27, 17, 167)
                                  .withOpacity(0.1),
                              spreadRadius: 3,
                              blurRadius: 10,
                              offset: Offset(3, 0),
                            )
                          ],
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                text: 'Энергетика, харизма — нет цифр',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 17,
                                    color: Color.fromARGB(255, 204, 120, 120)),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: '\n',
                                  ),
                                  TextSpan(
                                    text:
                                        '«Нет энергии» — быстрая утомляемость от перенапряжения или рутинной работы. Частые депрессии. Выраженное желание черпать энергию от эмоций(особенно негативных) других людей — по сути вампиризм. Будет сложно выбрать себе работу по силам. Для жизни необходимы здоровый сон, упражнения, йога.',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 17,
                                        color: Color.fromARGB(255, 0, 0, 0)),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
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
