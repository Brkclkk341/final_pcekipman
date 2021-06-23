import 'package:flutter/material.dart';

class corsair extends StatefulWidget {
  @override
  _corsairState createState() => _corsairState();
}

class _corsairState extends State<corsair> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'CORSAIR !', style: TextStyle(fontFamily: 'BlackOpsOne'),
        ),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 30,),
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.asset('assets/images/corsair2.jpg'),
            ),
            SizedBox(height: 30,),
            Text('- Göz Alıcı RGB -', style: TextStyle(color: Colors.white, fontSize: 30, fontFamily: 'BlackOpsOne'),),
            Text('- Çarpıcı Hız -', style: TextStyle(color: Colors.white, fontSize: 30, fontFamily: 'BlackOpsOne'),),
            SizedBox(height: 30,),
            ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: Image.asset('assets/images/corsair3.jpg'),
            ),
            SizedBox(height: 30,),
            Text('- Intel ve AMD Platformları ile Uyumlu -', style: TextStyle(color: Colors.white, fontSize: 15, fontFamily: 'BlackOpsOne'),),
            Text('- Akıllı Kontrol -', style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'BlackOpsOne'),),
            SizedBox(height: 30,),
            ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: Image.asset('assets/images/corsairkapak2.jpg'),
            ),
            SizedBox(height: 30,),
            Text('- Yüksek Frekans Performansı -', style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'BlackOpsOne'),),
            Text('- Alüminyum Soğutucu -', style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'BlackOpsOne'),),

          ],
        ),
      ),
    );
  }
}
