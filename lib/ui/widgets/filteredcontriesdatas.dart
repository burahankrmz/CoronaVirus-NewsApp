import 'package:covidapp/viewmodel/listviewcovidmodel.dart';
import 'package:flutter/material.dart';

class FilteredCountriesData extends StatelessWidget {
  final ListViewCovidModel covidDatalist;

   const FilteredCountriesData({Key key, this.covidDatalist}) : super(key: key);

  @override
  // ignore: missing_return
  Widget build(BuildContext context) {
    if (covidDatalist.covidData.isEmpty) {
      return const CircularProgressIndicator();
    } else if (covidDatalist.covidData.isNotEmpty) {
      return Column(
        children: [
          Material(
            elevation: 6,
            color: Colors.white,
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 60,
              child: ListTile(
                tileColor: Colors.white,
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Ülkeler",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                trailing: SizedBox(
                  width: 200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
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
          SizedBox(
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
                                  const TextStyle(color: Colors.black, fontSize: 12),
                            ),
                          ],
                        ),
                        trailing: SizedBox(
                          width: 200,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                  covidDatalist.covidData[index].cases
                                      .toString(),
                                  style: const TextStyle(
                                      color: Colors.black, fontSize: 12)),
                              Text(
                                  covidDatalist.covidData[index].deaths
                                      .toString(),
                                  style: const TextStyle(
                                      color: Colors.black, fontSize: 12)),
                              Text(
                                  covidDatalist.covidData[index].recovered
                                      .toString(),
                                  style: const TextStyle(
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
