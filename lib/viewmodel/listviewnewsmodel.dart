import 'package:covidapp/model/newsmodel.dart';
import 'package:covidapp/services/webservices.dart';
import 'package:covidapp/viewmodel/viewnewsmodel.dart';
import 'package:flutter/cupertino.dart';

enum LoadingStatus {
  completed,
  searching,
  empty,
}

class ListViewNewsModel extends ChangeNotifier {
  LoadingStatus loadingStatus = LoadingStatus.empty;
  // ignore: deprecated_member_use
  List<ViewNewsModel> articles = <ViewNewsModel>[];

  void fetchTopNewsHeadline() async {
    List<ModelNewsArticle> _newsarticle = await Webservice().getTopHeadlines();
    loadingStatus = LoadingStatus.searching;
    notifyListeners();
    articles = _newsarticle
        .map((articles) => ViewNewsModel(article: articles))
        .toList();
    if (articles.isEmpty) {
      loadingStatus = LoadingStatus.empty;
    } else {
      loadingStatus = LoadingStatus.completed;
    }
    notifyListeners();
  }

  void fetchNewsByCountry(String country) async {
    List<ModelNewsArticle> _newsarticle =
        await Webservice().getNewsByCountry(country);

    loadingStatus = LoadingStatus.searching;
    articles = _newsarticle
        .map((articles) => ViewNewsModel(article: articles))
        .toList();
    if (articles.isEmpty) {
      loadingStatus = LoadingStatus.empty;
    } else {
      loadingStatus = LoadingStatus.completed;
    }
    notifyListeners();
  }
}
