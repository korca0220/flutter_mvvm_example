import 'package:flutter_mvvm_app/app/data/model/dummy_person_datas.dart';
import 'package:flutter_mvvm_app/app/data/model/person.dart';
import 'package:flutter_mvvm_app/app/data/viewModel/person_viewModel.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxList<PersonViewModel> personList = <PersonViewModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchGetDummy();
  }

  Future<void> fetchGetDummy() async {
    final dummyList = DummyData.dummyList;
    personList(dummyList
        .map((value) => PersonViewModel(person: Person.fromJson(value)))
        .toList());
  }
}
