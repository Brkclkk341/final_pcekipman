import 'package:flutter/material.dart';

class tforcedelta extends StatefulWidget {
  @override
  _tforcedeltaState createState() => _tforcedeltaState();
}

class _tforcedeltaState extends State<tforcedelta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('T Force Delta !', style: TextStyle(fontFamily: 'BlackOpsOne'),),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.asset('assets/images/tforcedeltaram1.jpg'),
            Text(
              ' Ultra Geniş Açılı RGB Aydınlatma Efekti',
              style: TextStyle(fontSize: 20, fontFamily: 'LuckiestGuy'),
            ),
            Divider(
              height: 50,
              color: Colors.red,
              thickness: 9,
            ),
            Text(
              'Asimetrik Minimalist Tasarım',
              style: TextStyle(fontFamily: 'LuckiestGuy', fontSize: 20),
            ),
            Image.asset('assets/images/tforcedeltaram2.jpeg'),
            Text('T Force Blitz Desteği', style: TextStyle(fontFamily: 'LuckiestGuy',fontSize: 20,),),
            Divider(
              height: 50,
              color: Colors.red,
              thickness: 9,
            ),
            Text('Ultra Düşük Çalışma Voltajı', style: TextStyle(fontFamily: 'LuckiestGuy',fontSize: 20,),),
            SizedBox(height: 50,),
            Image.asset('assets/images/tforcedeltaram3.jpg'),
          ],
        ),
      ),
    );
  }
}
