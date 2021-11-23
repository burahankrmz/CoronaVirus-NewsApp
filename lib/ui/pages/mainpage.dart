import 'package:covidapp/ui/pages/news.dart';
import 'package:covidapp/ui/pages/newsbycountries.dart';
import 'package:covidapp/ui/widgets/coviddata.dart';
import 'package:covidapp/viewmodel/listviewcovidmodel.dart';
import 'package:covidapp/viewmodel/listviewnewsmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key key}) : super(key: key);

  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  List<Widget> _children(ListViewCovidModel listViewCovidModel,
          ListViewNewsModel modelNewsArticle) =>
      [
        CovidVeri(
          listViewCovidModel: listViewCovidModel,
        ),
        const NewsByCountries(),
        News(
          articles: modelNewsArticle,
        ),
      ];

  @override
  void initState() {
    super.initState();
    Provider.of<ListViewCovidModel>(context, listen: false)
        .fetchCovidByCountry();
    Provider.of<ListViewNewsModel>(context, listen: false)
        .fetchTopNewsHeadline();
  }

  @override
  Widget build(BuildContext context) {
    var listviewcovidmodel = Provider.of<ListViewCovidModel>(context);
    var listviewnewsmodel = Provider.of<ListViewNewsModel>(context);
    final List<Widget> children =
        _children(listviewcovidmodel, listviewnewsmodel);
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          "Covid Takip",
        )),
      ),
      body: children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Anasayfa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Arama',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fiber_new_sharp),
            label: 'Haberler',
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
