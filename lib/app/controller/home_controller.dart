import 'package:flutter_mvvm_app/app/data/model/dummy_person_datas.dart';
import 'package:flutter_mvvm_app/app/data/model/person_model.dart';
import 'package:flutter_mvvm_app/app/data/repository/home_repository.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxList<PersonModel> personList = <PersonModel>[].obs;

  // API
  Rx<PersonModel> person = PersonModel().obs;
  late IHomeRepository repository;

  @override
  void onInit() {
    super.onInit();
    repository = HomeRepository();
    fetchGetDummy();
  }

  fetchGetDummy() async {
    repository.getPersonList().then((value) => personList(value));
  }

  getPerson() async {
    repository.getPerson().then((value) => person(value));
  }
}
