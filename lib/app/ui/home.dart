import 'package:flutter/material.dart';
import 'package:flutter_mvvm_app/app/controller/home_controller.dart';
import 'package:get/get.dart';

class Home extends GetView<HomeController> {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mvvm test app'),
      ),
      body: Obx(
        () => ListView.builder(
          itemCount: controller.personList.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('name : ${controller.personList[index].name}'),
              subtitle: Text('age : ${controller.personList[index].age}'),
            );
          },
        ),
      ),
    );
  }
}
