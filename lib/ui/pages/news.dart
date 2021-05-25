import 'package:covidapp/ui/pages/newsdetail.dart';
import 'package:covidapp/viewmodel/listviewnewsmodel.dart';
import 'package:flutter/material.dart';

class News extends StatelessWidget {
  final ListViewNewsModel articles;
  News({this.articles});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
              itemCount: articles.articles.length,
              itemBuilder: (_, index) {
                var image;
                var articledesc;
                (articles.articles[index].urlToImage == null)
                    ? image =
                        "https://www.guzel.net.tr/blog/wp-content/uploads/2019/03/27.03-575x355.png"
                    : image = articles.articles[index].urlToImage;
                (articles.articles[index].description == null)
                    ? articledesc = "Haber Bulunamadı..."
                    : articledesc = articles.articles[index].description;

                return Material(
                  borderRadius: BorderRadius.circular(15),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Detay(
                                imgPath: image,
                                description: articledesc,
                                title: articles.articles[index].title,
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
                                    articles.articles[index].publishedAt,
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
                                        articles.articles[index].title,
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
