import 'package:flutter/material.dart';
import 'package:flutterburc/burc_listesi.dart';
import 'package:flutterburc/burc_detay.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/burcListesi",
      routes: {
        "/": (context) => BurcListesi(),
        "/burcListesi": (context) => BurcListesi(),
      },
      onGenerateRoute: (RouteSettings settings) {
        List<String> pathElemanlari = settings.name.split("/");
        if (pathElemanlari[1] == 'burcDetay') {
          return MaterialPageRoute(
              builder: (context) => BurcDetay(int.parse(pathElemanlari[2])));
        }
        return null;
      },
      title: "Burç Projesi",
      theme: ThemeData(primarySwatch: Colors.pink),
    );
  }
}
