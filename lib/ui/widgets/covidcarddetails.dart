import 'package:covidapp/viewmodel/listviewcovidmodel.dart';
import 'package:flutter/material.dart';

class CovidCardDetail extends StatelessWidget {
  final ListViewCovidModel covidDatalist;

  const CovidCardDetail({Key key, this.covidDatalist}) : super(key: key);

  @override
  // ignore: missing_return
  Widget build(BuildContext context) {
    if (covidDatalist.covidData.isEmpty) {
      return const CircularProgressIndicator();
    } else if (covidDatalist.covidData.isNotEmpty) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Material(
            elevation: 4,
            borderRadius: BorderRadius.circular(15),
            child: SizedBox(
              height: (MediaQuery.of(context).size.height / 5) + 16,
              width: MediaQuery.of(context).size.width - 60,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 16.0),
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
                    children: const [
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
                      SizedBox(
                        child: Text(
                          "${covidDatalist.covidData[0].cases.toString()}\n   Vaka",
                          style: const TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        color: Colors.black45,
                        height: 40,
                        width: 1,
                      ),
                      SizedBox(
                        child: Text(
                          "${covidDatalist.covidData[0].cases.toString()}\n   Ölüm",
                          style: const TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        color: Colors.black45,
                        height: 40,
                        width: 1,
                      ),
                      SizedBox(
                        child: Text(
                          "${covidDatalist.covidData[0].cases.toString()}\n İyileşen",
                          style: const TextStyle(
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
}
