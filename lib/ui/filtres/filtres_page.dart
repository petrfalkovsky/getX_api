import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_app/themes/app_theme.dart';
import 'package:getx_app/ui/filtres/boys_girls_buttons.dart';
import 'package:getx_app/ui/interests/interests_controller.dart';
import 'package:getx_app/ui/widgets/age_widget.dart';
import 'package:getx_app/ui/widgets/button_gradient_long_addon.dart';
import 'package:getx_app/ui/widgets/button_gradient_long_base.dart';
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
            child: GragientShortButtonBase(
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
          padding: const EdgeInsets.only(left: 30),
          child: Text('Tandem',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppConfig.secondary,
              )),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        top: false,
        minimum: const EdgeInsets.all(20.0),
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Center(
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Align(
                    alignment: FractionalOffset.topCenter,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                      child: Column(
                        children: [
                          BoysGirlsChooseWidget(),
                          SizedBox(height: 18.h),
                          PassionPartyRow(),
                          SizedBox(height: 18.h),
                          FamilyGamesRow(),
                          SizedBox(height: 18.h),
                          ArtImproveRow(),
                          SizedBox(height: 18.h),
                          BusinessTechRow(),
                          SizedBox(height: 18.h),
                          WhiteLongButton(
                            onPressed: () {},
                            child: Text(
                              '🦄 Обменяться подарками',
                              style: TextStyle(
                                  color: Color.fromRGBO(127, 187, 251, 1)),
                            ),
                          ),
                          SizedBox(height: 18.h),
                          WhiteLongButton(
                            onPressed: () {},
                            child: Text(
                              '🕊 Поделиться историей ',
                              style: TextStyle(
                                  color: Color.fromRGBO(127, 187, 251, 1)),
                            ),
                          ),
                          SizedBox(height: 18.h),
                          GragientLongButtonBase(
                            onPressed: () {},
                            child: Text('⛵ Приключение'),
                          ),
                          SizedBox(height: 18.h),
                          WhiteLongButton(
                            onPressed: () {},
                            child: Text(
                              '🏖 Совместный Chill ',
                              style: TextStyle(
                                  color: Color.fromRGBO(127, 187, 251, 1)),
                            ),
                          ),
                          SizedBox(height: 18.h),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
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
                          ),
                          SizedBox(height: 8.h),
                          AgeSetWidget(),
                        ],
                      ),
                    ),
                  ),
                ),
                EnableWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class EnableWidget extends StatelessWidget {
  const EnableWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: FractionalOffset.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(bottom: 20.h),
        child: GragientLongButtonAddon(
          onPressed: () {},
          child: Text('Применить'),
        ),
      ),
    );
  }
}

class BusinessTechRow extends StatelessWidget {
  const BusinessTechRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 1,
          child: WhiteButton(
            onPressed: () {},
            child: Text(
              '💵 Бизнес',
              style: TextStyle(color: Color.fromRGBO(127, 187, 251, 1)),
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
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
            ),
          ),
        ),
      ],
    );
  }
}

class ArtImproveRow extends StatelessWidget {
  const ArtImproveRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 1,
          child: GragientButtonTwo(
            onPressed: () {},
            child: Text(
              '🎨 Творчество',
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
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
              style: TextStyle(color: Color.fromRGBO(127, 187, 251, 1)),
            ),
          ),
        ),
      ],
    );
  }
}

class FamilyGamesRow extends StatelessWidget {
  const FamilyGamesRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 1,
          child: WhiteButton(
            onPressed: () {},
            child: Text(
              '👼🏻 Семья',
              style: TextStyle(color: Color.fromRGBO(127, 187, 251, 1)),
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
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
            ),
          ),
        ),
      ],
    );
  }
}

class PassionPartyRow extends StatelessWidget {
  const PassionPartyRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 1,
          child: GragientButtonTwo(
            onPressed: () {},
            child: Text(
              '🔥 Страсть',
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
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
              style: TextStyle(color: Color.fromRGBO(127, 187, 251, 1)),
            ),
          ),
        ),
      ],
    );
  }
}
