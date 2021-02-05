import 'package:flutter/material.dart';

class Pagina2 extends StatelessWidget {
  const Pagina2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Text('Page 2'),
         backgroundColor: Colors.transparent,
       ),
      backgroundColor: Colors.blueGrey,
      body: Center(child: Text('Pagina 2'),),
    );
  }
}
