import 'package:covidapp/model/covidmodel.dart';
import 'package:covidapp/services/webservices.dart';
import 'package:flutter/cupertino.dart';

enum LoadingStatus {
  completed,
  searching,
  empty,
}

class ListViewCovidModel extends ChangeNotifier {
  LoadingStatus loadingStatus = LoadingStatus.empty;
  List<ModelCovid> covidData = <ModelCovid>[];
  void fetchCovidByCountry() async {
    List<ModelCovid> _covidData = await Webservice().filteredList();

    loadingStatus = LoadingStatus.searching;
    notifyListeners();

    covidData = _covidData;

    if (covidData.isEmpty) {
      loadingStatus = LoadingStatus.empty;
    } else {
      loadingStatus = LoadingStatus.completed;
    }
    notifyListeners();
  }
}
