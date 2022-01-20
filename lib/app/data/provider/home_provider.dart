import 'package:flutter_mvvm_app/app/data/model/dummy_person_datas.dart';
import 'package:flutter_mvvm_app/app/data/model/person_model.dart';
import 'package:get/get_connect.dart';

abstract class IHomeProvider {
  Future<Response<PersonModel>> getPerson(String path);
  List<Map<String, dynamic>> getPersonLIst();
}

class HomeProvider extends GetConnect implements IHomeProvider {
  @override
  void onInit() {
    super.onInit();
    httpClient.defaultDecoder = PersonModel.fromJson;
    httpClient.baseUrl = "https://api.temporary.com";
  }

  @override
  Future<Response<PersonModel>> getPerson(path) => get(path);

  @override
  List<Map<String, dynamic>> getPersonLIst() => DummyData.dummyList;
}
