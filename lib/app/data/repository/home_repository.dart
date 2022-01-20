import 'package:flutter_mvvm_app/app/data/model/person_model.dart';
import 'package:flutter_mvvm_app/app/data/provider/home_provider.dart';

abstract class IHomeRepository {
  Future<PersonModel> getPerson();
  Future<List<PersonModel>> getPersonList();
}

class HomeRepository implements IHomeRepository {
  final IHomeProvider provider = HomeProvider();

  @override
  Future<PersonModel> getPerson() async {
    final result = await provider.getPerson("/person");
    if (result.status.hasError) {
      return Future.error(result.statusText.toString());
    } else {
      return Future.value(result.body);
    }
  }

  @override
  Future<List<PersonModel>> getPersonList() async {
    final result = provider.getPersonLIst();
    if (result.isEmpty) {
      return [PersonModel()];
    } else {
      return result.map((e) => PersonModel.fromJson(e)).toList();
    }
  }
}
