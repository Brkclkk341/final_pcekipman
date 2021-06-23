import 'package:flutter/material.dart';

class monsterpusat extends StatefulWidget {
  @override
  _monsterpusatState createState() => _monsterpusatState();
}

class _monsterpusatState extends State<monsterpusat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Text('Monster Pusat', style: TextStyle(fontFamily: 'BlackOpsOne', fontSize: 20, color: Colors.lightGreen),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[

            Image.asset('assets/images/monsterpusat1.jpg'),
            SizedBox(height: 30,),
            Text('- LIGHTSYNC Teknolojisi -', style: TextStyle(fontFamily: 'BlackOpsOne', fontSize: 20, color: Colors.lightGreen),),
            Text('- Ayarlanabilir Ağırlık -', style: TextStyle(fontFamily: 'BlackOpsOne', fontSize: 20, color: Colors.lightGreen),),
            SizedBox(height: 30,),

            Image.asset('assets/images/monsterpusat2.jpg'),
            SizedBox(height: 30,),
            Text('- Hero 16K Algılayıcı -', style: TextStyle(fontFamily: 'BlackOpsOne', fontSize: 20, color: Colors.lightGreen),),
            Text('- 11 Adet Programlanabilir Düğme -', style: TextStyle(fontFamily: 'BlackOpsOne', fontSize: 15, color: Colors.lightGreen),),
            SizedBox(height: 30,),

            Image.asset('assets/images/monsterpusat3.jpg'),
            SizedBox(height: 30,),
            Text('- Yerleşik Bellek -', style: TextStyle(fontFamily: 'BlackOpsOne', fontSize: 25, color: Colors.lightGreen),),
            Text('- Yüksek Hızlı Kaydırma Tekerleği -', style: TextStyle(fontFamily: 'BlackOpsOne', fontSize: 20, color: Colors.lightGreen),),
            SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}
