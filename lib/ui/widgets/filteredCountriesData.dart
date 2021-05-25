import 'package:covidapp/viewmodel/listviewcovidmodel.dart';
import 'package:flutter/material.dart';

class FilteredCountriesData extends StatelessWidget {
  final ListViewCovidModel covidDatalist;

  FilteredCountriesData({this.covidDatalist});

  @override
  // ignore: missing_return
  Widget build(BuildContext context) {
    if (covidDatalist.covidData.isEmpty) {
      return CircularProgressIndicator();
    } else if (covidDatalist.covidData.isNotEmpty) {
      return Column(
        children: [
          Material(
            elevation: 6,
            color: Colors.white,
            child: Container(
              width: MediaQuery.of(context).size.width - 60,
              child: ListTile(
                tileColor: Colors.white,
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ülkeler",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                trailing: Container(
                  width: 200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Vaka",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.bold)),
                      Text("Ölüm",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.bold)),
                      Text("İyileşen",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width - 60,
            height: (MediaQuery.of(context).size.height / 2) - 56.7,
            child: ListView.builder(
              itemCount: covidDatalist.covidData.length,
              itemBuilder: (_, index) {
                return Material(
                  elevation: 4,
                  child: Column(
                    children: [
                      Container(
                        color: Colors.grey,
                        width: MediaQuery.of(context).size.width - 100,
                        height: 1,
                      ),
                      ListTile(
                        tileColor: Colors.white,
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              covidDatalist.covidData[index].country,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 12),
                            ),
                          ],
                        ),
                        trailing: Container(
                          width: 200,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                  covidDatalist.covidData[index].cases
                                      .toString(),
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 12)),
                              Text(
                                  covidDatalist.covidData[index].deaths
                                      .toString(),
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 12)),
                              Text(
                                  covidDatalist.covidData[index].recovered
                                      .toString(),
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 12)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      );
    }
  }
}
