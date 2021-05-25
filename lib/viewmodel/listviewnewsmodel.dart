import 'package:covidapp/model/newsmodel.dart';
import 'package:covidapp/services/webservices.dart';
import 'package:covidapp/viewmodel/viewnewsmodel.dart';
import 'package:flutter/cupertino.dart';

enum LoadingStatus {
  Completed,
  Searching,
  Empty,
}

class ListViewNewsModel extends ChangeNotifier {
  LoadingStatus loadingStatus = LoadingStatus.Empty;
  // ignore: deprecated_member_use
  List<ViewNewsModel> articles = List<ViewNewsModel>();

  void fetchTopNewsHeadline() async {
    List<ModelNewsArticle> _newsarticle = await Webservice().getTopHeadlines();
    loadingStatus = LoadingStatus.Searching;
    notifyListeners();
    this.articles = _newsarticle
        .map((articles) => ViewNewsModel(article: articles))
        .toList();
    if (this.articles.isEmpty) {
      loadingStatus = LoadingStatus.Empty;
    } else {
      loadingStatus = LoadingStatus.Completed;
    }
    notifyListeners();
  }

  void fetchNewsByCountry(String country) async {
    List<ModelNewsArticle> _newsarticle =
        await Webservice().getNewsByCountry(country);

    loadingStatus = LoadingStatus.Searching;
    this.articles = _newsarticle
        .map((articles) => ViewNewsModel(article: articles))
        .toList();
    if (this.articles.isEmpty) {
      loadingStatus = LoadingStatus.Empty;
    } else {
      loadingStatus = LoadingStatus.Completed;
    }
    notifyListeners();
  }
}
