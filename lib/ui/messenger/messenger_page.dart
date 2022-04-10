import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/ui/messenger/messenger_controller.dart';

class AlertsPage extends GetView<AlertsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            "Мессенджер будет тут",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
