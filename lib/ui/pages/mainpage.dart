import 'package:covidapp/ui/pages/news.dart';
import 'package:covidapp/ui/widgets/covidVeri.dart';
import 'package:covidapp/viewmodel/listviewcovidmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AnaSayfa extends StatefulWidget {
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

  List<Widget> _children = [
    News(),
    News(),
    News(),
  ];

  @override
  void initState() {
    super.initState();
    Provider.of<ListViewCovidModel>(context, listen: false)
        .fetchCovidByCountry();
  }

  @override
  Widget build(BuildContext context) {
    var listviewcovidmodel = Provider.of<ListViewCovidModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "Covid Takip",
        )),
      ),
      body: CovidVeri(
        listViewCovidModel: listviewcovidmodel,
      ),
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
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
