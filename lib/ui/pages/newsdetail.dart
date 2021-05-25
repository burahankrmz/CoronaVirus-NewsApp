import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Detay extends StatefulWidget {
  Detay({this.imgPath, this.description, this.title});
  var imgPath;
  var description;
  var title;

  @override
  _DetayState createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 23,
                ),
                Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height - 23,
                      child: Stack(
                        children: [
                          Hero(
                            tag: 'aga',
                            child: Positioned(
                              top: 1,
                              left: 1,
                              right: 1,
                              child: Container(
                                height: 250,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                        widget.imgPath,
                                      ),
                                      fit: BoxFit.fitHeight),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 200,
                            child: Material(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(50),
                                  topRight: Radius.circular(50)),
                              elevation: 4,
                              child: Container(
                                height: MediaQuery.of(context).size.height - 23,
                                width: MediaQuery.of(context).size.width,
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: <Widget>[
                                      SizedBox(height: 50),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width -
                                                60,
                                        height:
                                            MediaQuery.of(context).size.height -
                                                295,
                                        child: SingleChildScrollView(
                                          child: Column(
                                            children: [
                                              Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width -
                                                    60,
                                                height: 100,
                                                child: Text(
                                                  widget.title,
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 22),
                                                ),
                                              ),
                                              Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width -
                                                    60,
                                                child: Text(
                                                  widget.description,
                                                  style:
                                                      TextStyle(fontSize: 20),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
