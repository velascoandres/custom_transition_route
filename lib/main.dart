import 'package:custom_transition_route/pages/page1.dart';
import 'package:custom_transition_route/pages/page2.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'page1',
      routes: {
        'page1': (_) => Pagina1(),
        'page2': (_) => Pagina2(),
      },
    );
  }
}