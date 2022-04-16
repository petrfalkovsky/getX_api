import 'package:flutter/material.dart';
import 'package:getx_app/themes/app_theme.dart';
import 'package:getx_app/ui/widgets/default_container.dart';

class BoysGirlsChooseWidget extends StatefulWidget {
  const BoysGirlsChooseWidget({Key? key}) : super(key: key);

  @override
  _BoysGirlsChooseWidgetState createState() => _BoysGirlsChooseWidgetState();
}

class _BoysGirlsChooseWidgetState extends State<BoysGirlsChooseWidget> {
  late final List<String> chooseWho;
  late int indexServices;
  late int indexColorServices;

  @override
  void initState() {
    super.initState();
    chooseWho = ['Девушки', 'Все', 'Парни'];

    indexServices = 0;
    indexColorServices = 0;
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return DefaultContainer(
      child: Stack(
        children: [
          Row(
            children: [
              GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  /*  controller.orderController
                                        .countTypeOfCleaning(
                                      oldIndex: indexServices,
                                      newIndex: 0,
                                    ); */
                  setState(() {
                    indexServices = 0;
                    indexColorServices = 0;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 11, bottom: 15),
                  child: SizedBox(
                    width: (width - 64) / 3,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        chooseWho[0],
                        style: const TextStyle(
                          fontSize: 15,
                          color: AppConfig.pinkColor,
                          // fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  /* controller.orderController
                                        .countTypeOfCleaning(
                                      oldIndex: indexServices,
                                      newIndex: 1,
                                    ); */
                  setState(() {
                    indexServices = 1;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 11, bottom: 15),
                  child: SizedBox(
                    width: (width - 64) / 3,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        chooseWho[1],
                        style: TextStyle(
                          fontSize: 15,
                          color: indexColorServices == 0
                              ? AppConfig.pinkColor
                              : AppConfig.blueColor,
                          // fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  /*   controller.orderController
                                        .countTypeOfCleaning(
                                      oldIndex: indexServices,
                                      newIndex: 2,
                                    ); */
                  setState(() {
                    indexServices = 2;
                    indexColorServices = 2;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 11, bottom: 15),
                  child: SizedBox(
                    width: (width - 64) / 3,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        chooseWho[2],
                        style: const TextStyle(
                          fontSize: 15,
                          color: AppConfig.blueColor,
                          // fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          AnimatedAlign(
            duration: const Duration(milliseconds: 300),
            alignment: indexServices == 0
                ? Alignment.centerLeft
                : indexServices == 1
                    ? Alignment.center
                    : Alignment.topRight,
            child: Container(
              width: (width - 64) / 3,
              padding: const EdgeInsets.only(top: 11, bottom: 14),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(34),
                gradient: LinearGradient(
                  colors: [
                    AppConfig.endPointGradientBase,
                    AppConfig.startPointGradientBase,
                  ],
                ),
              ),
              child: Text(
                chooseWho[indexServices],
                style: const TextStyle(
                  fontSize: 14,
                  color: AppConfig.whiteColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
