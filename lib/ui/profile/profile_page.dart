import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'profile_controller.dart';

class AccountPage extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Профиль будет тут",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20.h),
              Text("Сколько дней осталось до запуска?"),
              SizedBox(height: 20.h),
              OutlinedButton(
                child: Text("Добавить немношк"),
                onPressed: () => controller.increaseCounter(),
              ),
              SizedBox(height: 20.h),
              Obx(() => Text("вот сколько ${controller.counter.value}")),
            ],
          ),
        ),
      ),
    );
  }
}
