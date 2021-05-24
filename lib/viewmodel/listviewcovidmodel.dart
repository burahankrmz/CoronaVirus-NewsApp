import 'package:covidapp/model/covidmodel.dart';
import 'package:covidapp/services/webservices.dart';
import 'package:flutter/cupertino.dart';

enum LoadingStatus {
  Completed,
  Searching,
  Empty,
}

class ListViewCovidModel extends ChangeNotifier {
  LoadingStatus loadingStatus = LoadingStatus.Empty;
  // ignore: deprecated_member_use
  List<ModelCovid> covidData = List<ModelCovid>();

  void fetchCovidByCountry() async {
    List<ModelCovid> _covidData = await Webservice().filteredList();

    loadingStatus = LoadingStatus.Searching;
    notifyListeners();

    this.covidData = _covidData;

    if (this.covidData.isEmpty) {
      loadingStatus = LoadingStatus.Empty;
    } else {
      loadingStatus = LoadingStatus.Completed;
    }
    notifyListeners();
  }
}
