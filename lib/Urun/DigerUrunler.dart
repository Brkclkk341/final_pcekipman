
import 'package:ekipman_pc/Urun/corsair.dart';
import 'package:ekipman_pc/Urun/hyperX.dart';
import 'package:ekipman_pc/Urun/logitechg502.dart';
import 'package:ekipman_pc/Urun/medusa.dart';
import 'package:ekipman_pc/Urun/monsterpusat.dart';
import 'package:ekipman_pc/Urun/tforcedelta.dart';
import 'package:ekipman_pc/urun_grafik/grafik_ekran.dart';
import 'package:ekipman_pc/views/albums_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DigerUrunler extends StatefulWidget {
  @override
  _DigerUrunlerState createState() => _DigerUrunlerState();
}

class _DigerUrunlerState extends State<DigerUrunler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: Text('Diğer Ürünler',style: TextStyle(fontSize: 20, fontFamily: 'BlackOpsOne'),),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 20.0,
        crossAxisSpacing: 15.0,
        children: <Widget>[
          ClipOval(child: Image.asset('assets/images/hyperx.jpg')),
          GestureDetector(
            onDoubleTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => hyperX()));
            },
            child: FlatButton(
              onPressed: () {},
              child: Row(
                children: <Widget>[
                  Text(
                    'Double Tap',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'BlackOpsOne',
                      color: Colors.black,
                      backgroundColor: Colors.red,
                    ),
                  ),
                  Icon(
                    Icons.arrow_right_alt_sharp,
                    color: Colors.red,
                    size: 35,
                  ),
                ],
              ),
              color: Colors.black,
            ),
          ),
          ClipOval(child: Image.asset('assets/images/medusa.jpg')),
          GestureDetector(
            onLongPress: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => medusa()));
            },
            child: FlatButton(
              onPressed: () {},
              child: Row(
                children: <Widget>[
                  Text(
                    'OnLongPress',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'BlackOpsOne',
                      color: Colors.black,
                      backgroundColor: Colors.red,
                    ),
                  ),
                  Icon(
                    Icons.arrow_right_alt_sharp,
                    color: Colors.red,
                    size: 35,
                  ),
                ],
              ),
              color: Colors.black,
            ),
          ),
          GestureDetector(
            onTapCancel: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => tforcedelta()));
            },
            child: FlatButton(
              onPressed: () {},
              child: Row(
                children: <Widget>[
                  Text(
                    'OnTapCancel',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'BlackOpsOne',
                      color: Colors.black,
                      backgroundColor: Colors.red,
                    ),
                  ),
                  Icon(
                    Icons.arrow_right_alt_sharp,
                    color: Colors.red,
                    size: 35,
                  ),
                ],
              ),
              color: Colors.black,
            ),
          ),
          ClipOval(child: Image.asset('assets/images/tforcedeltakapak.jpg')),
          GestureDetector(
            onLongPressUp: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => corsair()));
            },
            child: FlatButton(
              onPressed: () {},
              child: Row(
                children: <Widget>[
                  Text(
                    'OnLongPressUp',
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'BlackOpsOne',
                      color: Colors.black,
                      backgroundColor: Colors.red,
                    ),
                  ),
                  Icon(
                    Icons.arrow_right_alt_sharp,
                    color: Colors.red,
                    size: 35,
                  ),
                ],
              ),
              color: Colors.black,
            ),
          ),
          ClipOval(child: Image.asset('assets/images/corsair1.jpg')),
          ClipOval(
            child: Image.asset('assets/images/logig502.jpg'),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => logitechg502()));
            },
            color: Colors.black,
            child: Icon(
              Icons.arrow_right_sharp,
              color: Colors.red,
              size: 200,
            ),
          ),
          CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage('assets/images/monsterpusat.jpg'),
            backgroundColor: Colors.white,
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => monsterpusat()));
            },
            color: Colors.black,
            child: Icon(
              Icons.arrow_right_sharp,
              color: Colors.red,
              size: 200,
            ),
          ),
          Text(
              'JSON Kullanılarak Marka Model ve Fiyatların Karşılaştırılmasını Görmek İçin Yandaki Buttona Basınız', style: TextStyle(color: Colors.red, fontSize: 19.2, fontFamily: 'BlackOpsOne'),

          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => AlbumsView()));
            },
            color: Colors.black,
            child: Icon(
              Icons.arrow_right_sharp,
              color: Colors.red,
              size: 200,
            ),
          ),
          ClipOval(
            child: Image.asset('assets/images/graffik.jpg'),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PieChartSample2()));
            },
            color: Colors.black,
            child: Icon(
              Icons.arrow_right_sharp,
              color: Colors.red,
              size: 200,
            ),
          ),
        ],
      ),
    );
  }
}
