import 'package:covidapp/ui/pages/newsdetail.dart';
import 'package:flutter/material.dart';

class News extends StatelessWidget {
  const News({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
        child: Container(
          //color: Colors.orange,
          width: MediaQuery.of(context).size.width - 20,
          height: 900,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Material(
                  borderRadius: BorderRadius.circular(15),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Detay(
                              imgPath:
                                  'https://foto.sondakika.com/haber/2021/05/22/saglik-bakanligi-rehberini-guncelledi-12-15-yas-14148678_5902_osd.jpg')));
                    },
                    child: Hero(
                      tag: "aga",
                      child: Container(
                        height: 120,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://foto.sondakika.com/haber/2021/05/22/saglik-bakanligi-rehberini-guncelledi-12-15-yas-14148678_5902_osd.jpg"),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: 220,
                                  child: Text(
                                    "Tuesday, 21st January 2020",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Container(
                                  //color: Colors.black,
                                  width: 220,
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        "Covid-19 aşısı olmuştu: Bensu Soral hastalığı hakkında ilk kez konuştu - Cumhuriyet",
                                        style: TextStyle(
                                            color: Colors.blue.shade900,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
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
              }),
        ),
      ),
    );
  }
}
