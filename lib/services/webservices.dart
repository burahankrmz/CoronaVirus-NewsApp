import 'dart:convert';
import 'package:covidapp/model/covidmodel.dart';
import 'package:covidapp/model/newsmodel.dart';
import 'package:covidapp/utils/constants.dart';
import 'package:http/http.dart' as http;

class Webservice {
  // ignore: missing_return

  Future<List<ModelNewsArticle>> getTopHeadlines() async {
    final response = await http.get(Uri.parse(Constants.newstopheadlines));
    if (response.statusCode == 200) {
      var result = jsonDecode(response.body);
      Iterable list = result["articles"];
      return list.map((article) => ModelNewsArticle.fromJson(article)).toList();
    } else {
      throw Exception("Failed to get News!!!");
    }
  }

  Future<List<ModelNewsArticle>> getNewsByCountry(String country) async {
    final response = await http.get(Uri.parse(Constants.headlinesFor(country)));
    if (response.statusCode == 200) {
      var result = jsonDecode(response.body);
      Iterable list = result["articles"];
      return list.map((article) => ModelNewsArticle.fromJson(article)).toList();
    } else {
      throw Exception("Failed to get Country News");
    }
  }

  Future<List<ModelCovid>> getCovidData() async {
    final response = await http.get(Uri.parse(Constants.covidUri));
    if (response.statusCode == 200) {
      var result = jsonDecode(response.body);
      Iterable list = result;
      return list.map((covid) => ModelCovid.fromJson(covid)).toList();
    } else {
      throw Exception("Failed to get Covid Data!!!");
    }
  }

  Future<List<ModelCovid>> filteredList() async {
    List<ModelCovid> filteredCovid = [];
    List<ModelCovid> covidNormal = await Webservice().getCovidData();
    Iterable<ModelCovid> filter = covidNormal
        .where((country) => country.country.startsWith('Turkey'))
        .toList();
    Iterable<ModelCovid> filter2 = covidNormal
        .where((country) => country.country.startsWith('France'))
        .toList();
    Iterable<ModelCovid> filter3 = covidNormal
        .where((country) => country.country.startsWith('USA'))
        .toList();
    Iterable<ModelCovid> filter4 = covidNormal
        .where((country) => country.country.startsWith('Germany'))
        .toList();
    Iterable<ModelCovid> filter5 = covidNormal
        .where((country) => country.country.startsWith('China'))
        .toList();
    filteredCovid.add(filter.first);
    filteredCovid.add(filter2.first);
    filteredCovid.add(filter3.first);
    filteredCovid.add(filter4.first);
    filteredCovid.add(filter5.first);

    return filteredCovid;
  }
}
