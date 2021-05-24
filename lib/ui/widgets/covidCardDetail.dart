import 'package:covidapp/viewmodel/listviewcovidmodel.dart';
import 'package:flutter/material.dart';

class CovidCardDetail extends StatelessWidget {
  final ListViewCovidModel covidDatalist;

  CovidCardDetail({this.covidDatalist});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Material(
          elevation: 4,
          borderRadius: BorderRadius.circular(15),
          child: Container(
            height: 150,
            width: MediaQuery.of(context).size.width - 60,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      "SON DURUMLAR",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      "Güncellenme:",
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "21 Mayıs 2021",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      child: Text(
                        "${covidDatalist.covidData[0].cases.toString()}\n   Vaka",
                        style: TextStyle(
                            color: Colors.orange, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      color: Colors.black45,
                      height: 40,
                      width: 1,
                    ),
                    Container(
                      child: Text(
                        "${covidDatalist.covidData[0].cases.toString()}\n   Ölüm",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      color: Colors.black45,
                      height: 40,
                      width: 1,
                    ),
                    Container(
                      child: Text(
                        "${covidDatalist.covidData[0].cases.toString()}\n İyileşen",
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
