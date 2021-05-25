import 'package:covidapp/ui/pages/newsdetail.dart';
import 'package:covidapp/utils/constants.dart';
import 'package:covidapp/viewmodel/listviewnewsmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewsByCountries extends StatefulWidget {
  @override
  _NewsByCountriesState createState() => _NewsByCountriesState();
}

class _NewsByCountriesState extends State<NewsByCountries> {
  int _value = 0;

  @override
  void initState() {
    super.initState();
    Provider.of<ListViewNewsModel>(context, listen: false)
        .fetchTopNewsHeadline();
  }

  @override
  Widget build(BuildContext context) {
    var listviewnewsmodel = Provider.of<ListViewNewsModel>(context);
    return Column(
      children: [
        DropdownButton(
          hint: Text("Ülke Seçiniz"),
          items: [
            DropdownMenuItem(
              child: Text("Turkey"),
              value: 1,
            ),
            DropdownMenuItem(
              child: Text("France"),
              value: 2,
            ),
            DropdownMenuItem(
              child: Text("USA"),
              value: 3,
            ),
            DropdownMenuItem(
              child: Text("Germany"),
              value: 4,
            ),
            DropdownMenuItem(
              child: Text("China"),
              value: 5,
            ),
          ],
          onChanged: (value) {
            setState(() {
              _value = value;
              listviewnewsmodel.fetchNewsByCountry(Constants.Countries[_value]);
            });
          },
        ),
        Expanded(
          child: ListView.builder(
              itemCount: listviewnewsmodel.articles.length,
              itemBuilder: (_, index) {
                var image;
                var articledesc;
                (listviewnewsmodel.articles[index].urlToImage == null)
                    ? image =
                        "https://www.guzel.net.tr/blog/wp-content/uploads/2019/03/27.03-575x355.png"
                    : image = listviewnewsmodel.articles[index].urlToImage;
                (listviewnewsmodel.articles[index].description == null)
                    ? articledesc = "Haber Bulunamadı..."
                    : articledesc =
                        listviewnewsmodel.articles[index].description;

                return Material(
                  borderRadius: BorderRadius.circular(15),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Detay(
                                imgPath: image,
                                description: articledesc,
                                title: listviewnewsmodel.articles[index].title,
                              )));
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
                                    image: NetworkImage(image),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 15,
                                ),
                                Container(
                                  width: 220,
                                  child: Text(
                                    listviewnewsmodel
                                        .articles[index].publishedAt,
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  //color: Colors.black,
                                  width: 220,
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        listviewnewsmodel.articles[index].title,
                                        style: TextStyle(
                                            color: Colors.blue.shade900,
                                            fontSize: 14,
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
      ],
    );
  }
}
