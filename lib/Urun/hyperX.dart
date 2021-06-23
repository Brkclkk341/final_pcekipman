
import 'package:ekipman_pc/Urun/hyperxresim.dart';
import 'package:flutter/material.dart';

class hyperX extends StatefulWidget {
  @override
  _hyperXState createState() => _hyperXState();
}

class _hyperXState extends State<hyperX> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('HYPERX !', style: TextStyle(fontFamily: 'BlackOpsOne'),),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          DataTable(columns: [
            DataColumn(
              label: Text(
                'Marka',
                style: TextStyle(color: Colors.white),
              ),
            ),
            DataColumn(
              label: Text(
                'Model',
                style: TextStyle(color: Colors.white),
              ),
            ),
            DataColumn(
                label: Text(
              'Fiyat',
              style: TextStyle(color: Colors.white),
            )),
            DataColumn(
                label: Text(
              'Renk',
              style: TextStyle(color: Colors.white),
            )),
          ], rows: [
            DataRow(cells: [
              DataCell(Text(
                'HYPER X',
                style: TextStyle(color: Colors.white),
              )),
              DataCell(Text(
                'Cloud II',
                style: TextStyle(color: Colors.white),
              )),
              DataCell(Text(
                '850 TL',
                style: TextStyle(color: Colors.white),
              )),
              DataCell(Text(
                'Siyah',
                style: TextStyle(color: Colors.white),
              )),
            ]),
          ]),
          Divider(
            height: 50,
            color: Colors.red,
            thickness: 9,
          ),
          Center(
            child: Text(
              'ÖZELLİKLER',
              style: TextStyle(color: Colors.white,fontSize: 25,),
            ),
          ),
          SizedBox(height: 15,),
          Row(
            children: [
              Icon(
                Icons.headset,
                color: Colors.red,
                size: 50,
              ),
              Text(
                'Konforlu Kulak Yastıkları',
                style: TextStyle(color: Colors.white,fontSize: 25,),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.headset,
                color: Colors.red,
                size: 50,
              ),
              Text(
                'Dijital İyileştirme Özellikli Mikrofon',
                style: TextStyle(color: Colors.white, fontSize: 20,),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.headset,
                color: Colors.red,
                size: 50,
              ),
              Text(
                'Pasif Gürültü Önleme Özelliği',
                style: TextStyle(color: Colors.white, fontSize: 25,),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.headset,
                color: Colors.red,
                size: 50,
              ),
              Text(
                'Gelişmiş Ses Kontrol Kutusu',
                style: TextStyle(color: Colors.white,fontSize: 25,),
              ),
            ],
          ),
          Opacity(
            opacity: 0.0,
            child: Container(
              width: 200,
              height: 100,
            ),
          ),
          Tooltip(
            message: 'Daha Fazla Fotoğraf',
            child: Center(
              child: RaisedButton(
                color: Colors.red,
                onPressed: (){
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => hyperxresim()));
                },
                child: Icon(
                  Icons.image,
                  size: 50,
                  color: Colors.black,
                )
              ),
            ),
          ),
          Divider(
            height: 50,
            color: Colors.red,
            thickness: 9,
          ),
          Text('OnTap', style: TextStyle(color: Colors.red),),
          Container(
            color: Colors.red,
            child: GestureDetector(
              child: Text('Daha Fazla Resim Görmek İstiyorum', style: TextStyle(fontSize: 20,),),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Daha Fazla Resim Görmek İçin Yukarıdaki Buttona Tıkla')));
              },
            ),
          )
        ],
      ),
    );
  }
}
