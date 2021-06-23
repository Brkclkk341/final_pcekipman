
import 'package:ekipman_pc/Urun/DigerUrunler.dart';
import 'package:ekipman_pc/Urun/EkranKartlari.dart';
import 'package:ekipman_pc/Urun/Klavyeler.dart';
import 'package:ekipman_pc/Urun/Monitorler.dart';
import 'package:flutter/material.dart';

class Urunler extends StatefulWidget {
  @override
  _UrunlerState createState() => _UrunlerState();
}

class _UrunlerState extends State<Urunler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true, //başlık ortalama
        backgroundColor: Colors.red, //arkaplan rengi
        title: Text(    //başlık
          'Ürünler',
          style: TextStyle(     //Yazıya stil vermek için
            color: Colors.black,
            fontFamily: 'DelaGothicOne',
            fontSize: 30,
          ),
        ),
      ),
      body: SingleChildScrollView(   //kaydırılabilir ekran
        child: Center(
          child: Column(             //sütun
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Text(
                'Tekrardan Merhaba',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'LuckiestGuy',
                  fontSize: 30,
                ),
              ),
              SizedBox(height: 20,),
              Text('Bu Sayfanın En Altında Bulunan Diğer Ürünler Sayfası Final İçin Hazırlanmıştır.',style: TextStyle(color: Colors.black, fontFamily: 'LuckiestGuy',fontSize: 30),),

              SizedBox(
                height: 40,
              ),

              Image.asset(
                'assets/images/rtx.jpg',
                width: 350.0,
              ),
              Card(          //kartvizit widgetı   yazılar bunun içine alındı
                margin: EdgeInsets.all(20),  //elementlerin birbirine olan uzaklığı
                elevation: 10,  //gölge miktarı
                color: Colors.red,
                child: Text(
                  'EKRAN KARTLARI',
                  style: TextStyle(
                    wordSpacing: 4,
                    height: 1.7,
                    fontFamily: 'LuckiestGuy',
                    fontSize: 25,
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => EkranKartlari()));
                },
                child: Icon(   //buttonlara child olarak icon atandı
                  Icons.double_arrow_sharp,
                  size: 40,
                ),
                padding: EdgeInsets.all(15),   //element kenarı ile element içeriği arasındaki boşluk
                color: Colors.red,
                elevation: 10,
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/images/msi.jpg',
                width: 300,
              ),
              Card(
                margin: EdgeInsets.all(20),
                color: Colors.red,
                child: Text(
                  'OYUNCU MONİTÖRLERİ',
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'LuckiestGuy',
                    wordSpacing: 4,
                    height: 1.7,
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                 Navigator.push(context,
                     MaterialPageRoute(builder: (context) => Monitorler()));
                },
                child: Icon(
                  Icons.double_arrow_sharp,
                  size: 40,
                ),
                padding: EdgeInsets.all(15),   //içerik ve çerçeve arası boşluk
                color: Colors.red,
                elevation: 10,   //gölge
              ),
              SizedBox(height: 30,),
              Image.asset(
                'assets/images/steelseries.jpg',
                width: 350.0,
              ),
              Card(
                margin: EdgeInsets.all(20),
                color: Colors.red,
                child: Text(
                  'OYUNCU KLAVYELERİ',
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'LuckiestGuy',
                    wordSpacing: 4,
                    height: 1.7,
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                 Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Klavyeler()));
                },
                child: Icon(
                  Icons.double_arrow_sharp,
                  size: 40,
                ),
                padding: EdgeInsets.all(15),
                color: Colors.red,
                elevation: 10,
              ),
              SizedBox(height: 30,),
              RaisedButton(onPressed: () {
               Navigator.push(context,
                 MaterialPageRoute(builder: (context) => DigerUrunler()));
              },
                child: Text(
                  'Diğer Ürünleri Görmek İçin Basınız',
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'BlackOpsOne',

                  ),
                ),
                color: Colors.red,
              ),

            ],
          ),
        ),
      ),
    );
  }
}