import 'package:covidapp/ui/widgets/covidCardDetail.dart';
import 'package:covidapp/ui/widgets/filteredCountriesData.dart';
import 'package:covidapp/viewmodel/listviewcovidmodel.dart';
import 'package:flutter/material.dart';

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
