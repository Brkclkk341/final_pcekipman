import 'package:flutter/material.dart';


class medusaresim extends StatefulWidget {
  @override
  _medusaresimState createState() => _medusaresimState();
}

class _medusaresimState extends State<medusaresim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(
          'Medusa Resim !',style: TextStyle(fontFamily: 'BlackOpsOne'),),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[

            Image.asset(
                'assets/images/medusa1.jpg'
            ),
            Image.asset('assets/images/medusa2.jpeg'),

          ],
        ),
      ),
    );
  }
}
