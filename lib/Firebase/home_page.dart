

import 'package:ekipman_pc/Urun/Hakkinda.dart';
import 'package:ekipman_pc/Urun/Urunler.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'signin_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text("Hoşgeldiniz",style: TextStyle(fontFamily: 'BlackOpsOne',),),
        actions: [
          //! Builder eklemezsek Scaffold.of() hata verecektir!
          Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.login),
              onPressed: () async {
                await _auth.signOut();
                if (await GoogleSignIn().isSignedIn()) {
                  print("Google User");
                  await GoogleSignIn().disconnect();
                  await GoogleSignIn().signOut();
                }
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text("Başarıyla çıkış yapıldı"),
                ));

                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignInPage(),
                  ),
                );
              },
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('Giriş Başarılı !',style: TextStyle(fontSize: 30, color: Colors.red, fontFamily: 'BlackOpsOne'),),
            Divider(
              height: 50,
              color: Colors.red,
              thickness: 9,
            ),
            FlutterLogo(
              size: 200,
              style: FlutterLogoStyle.stacked,
            ),
            Divider(
              height: 50,
              color: Colors.red,
              thickness: 9,
            ),
            RaisedButton(
              child: Text('Ürünleri Görmek için Basınız',style: TextStyle(fontSize: 20),),
              color: Colors.red,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Urunler()));
              },
            ),
            RaisedButton(
              child: Text('Hakkında Sayfası', style: TextStyle(fontSize: 20),),
              color: Colors.red,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Hakkinda()));
              },
            ),

          ],
        ),
      ),
    );
  }
}
