import 'package:covidapp/viewmodel/listviewcovidmodel.dart';
import 'package:flutter/material.dart';

import 'covidcarddetails.dart';
import 'filteredcontriesdatas.dart';

class CovidVeri extends StatelessWidget {
  final ListViewCovidModel listViewCovidModel;

  const CovidVeri({Key key, this.listViewCovidModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CovidCardDetail(covidDatalist: listViewCovidModel),
          FilteredCountriesData(covidDatalist: listViewCovidModel),
        ],
      ),
    );
  }
}
