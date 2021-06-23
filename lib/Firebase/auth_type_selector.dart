import 'file:///C:/Users/brkcl/AndroidStudioProjects/ekipman_pc/lib/Firebase/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_builder.dart';
import 'register_page.dart';
import 'signin_page.dart';

/// Bir kimlik doğrulama türü [Authentication Type] seçmek için
/// bir UI [User Interface] sağlar.
class AuthTypeSelector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text("Bilgisayar Ekipmanları", style: TextStyle(fontFamily: 'BlackOpsOne', color: Colors.black),),
      ),
      body: Column(
        children: <Widget>[
          Text('Hoşgeldiniz !',style: TextStyle(fontSize: 30, color: Colors.white, fontFamily: 'BlackOpsOne'),),
          Icon(Icons.person, color: Colors.white,size: 50,),
          //? Kayıt Ol Buttonu
          Container(
            child: SignInButtonBuilder(
              icon: Icons.person_add,
              backgroundColor: Colors.red,
              text: "Üyelik Oluştur",
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => RegisterPage(),
                ),
              ),
            ),
            padding: const EdgeInsets.all(16.0),
            alignment: Alignment.center,
          ),
          //? Giriş Yap Buttonu
          Container(
            child: SignInButtonBuilder(
              icon: Icons.login_rounded,
              backgroundColor: Colors.red,
              text: "Giriş Yap",
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => FirebaseAuth.instance.currentUser == null
                      ? SignInPage()
                      : HomePage(),
                ),
              ),
            ),
            padding: const EdgeInsets.all(16.0),
            alignment: Alignment.center,
          ),
          Image.asset('assets/images/kasa.png'),
        ],
      ),
    );
  }
}
