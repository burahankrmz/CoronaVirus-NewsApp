import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Detay extends StatefulWidget {
  Detay({Key key, this.imgPath, this.description, this.title}) : super(key: key);
  dynamic imgPath;
  dynamic description;
  dynamic title;

  @override
  _DetayState createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 23,
                ),
                Stack(
                  children: [
                    SizedBox(
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
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(50),
                                  topRight: Radius.circular(50)),
                              elevation: 4,
                              child: SizedBox(
                                height: MediaQuery.of(context).size.height - 23,
                                width: MediaQuery.of(context).size.width,
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: <Widget>[
                                      const SizedBox(height: 50),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width -
                                                60,
                                        height:
                                            MediaQuery.of(context).size.height -
                                                295,
                                        child: SingleChildScrollView(
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width -
                                                    60,
                                                height: 100,
                                                child: Text(
                                                  widget.title,
                                                  style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 22),
                                                ),
                                              ),
                                              SizedBox(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width -
                                                    60,
                                                child: Text(
                                                  widget.description,
                                                  style:
                                                      const TextStyle(fontSize: 20),
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
