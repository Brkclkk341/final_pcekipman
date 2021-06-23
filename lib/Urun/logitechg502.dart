import 'package:flutter/material.dart';

class logitechg502 extends StatefulWidget {
  @override
  _logitechg502State createState() => _logitechg502State();
}

class _logitechg502State extends State<logitechg502> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar
        (title: Text('Logitech G 502', style: TextStyle(fontFamily: 'BlackOpsOne'),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[

          Image.asset('assets/images/logig5021.jpg'),
            SizedBox(height: 30,),
            Text('- LIGHTSYNC Teknolojisi -', style: TextStyle(fontFamily: 'BlackOpsOne', fontSize: 20, color: Colors.blue),),
            Text('- Ayarlanabilir Ağırlık -', style: TextStyle(fontFamily: 'BlackOpsOne', fontSize: 20, color: Colors.blue),),
            SizedBox(height: 30,),

            Image.asset('assets/images/logig5022.jpg'),
            SizedBox(height: 30,),
            Text('- Hero 16K Algılayıcı -', style: TextStyle(fontFamily: 'BlackOpsOne', fontSize: 20, color: Colors.blue),),
            Text('- 11 Adet Programlanabilir Düğme -', style: TextStyle(fontFamily: 'BlackOpsOne', fontSize: 15, color: Colors.blue),),
            SizedBox(height: 30,),

            Image.asset('assets/images/logig5023.png'),
            SizedBox(height: 30,),
            Text('- Yerleşik Bellek -', style: TextStyle(fontFamily: 'BlackOpsOne', fontSize: 25, color: Colors.blue),),
            Text('- Yüksek Hızlı Kaydırma Tekerleği -', style: TextStyle(fontFamily: 'BlackOpsOne', fontSize: 20, color: Colors.blue),),
            SizedBox(height: 30,),
        ],
        ),
      ),
    );
  }
}
