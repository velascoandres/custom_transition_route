import 'package:custom_transition_route/pages/page2.dart';
import 'package:flutter/material.dart';

class Pagina1 extends StatelessWidget {
  const Pagina1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: MaterialButton(
          child: Text('Go to page2'),
          color: Colors.white,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_)=> Pagina2(),
              ),
            );
          },
        ),
      ),
    );
  }
}
