import 'package:covidapp/ui/pages/mainpage.dart';
import 'package:covidapp/viewmodel/listviewcovidmodel.dart';
import 'package:covidapp/viewmodel/listviewnewsmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => ListViewCovidModel(),
          ),
          ChangeNotifierProvider(create: (_) => ListViewNewsModel()),
        ],
        child: const AnaSayfa(),
      ),
    );
  }
}
