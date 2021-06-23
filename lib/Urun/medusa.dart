import 'package:ekipman_pc/Urun/medusaresim.dart';
import 'package:flutter/material.dart';

class medusa extends StatefulWidget {
  @override
  _medusaState createState() => _medusaState();
}

class _medusaState extends State<medusa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.red,
            expandedHeight: 200,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                'Gamepower Medusa',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'BlackOpsOne',
                ),
              ),
              background: Image.asset(
                'assets/images/gamepowermedusaappbar.jpeg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverFillRemaining(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Icon(
                        Icons.headset,
                        color: Colors.red,
                        size: 120,
                      ),
                      Icon(
                        Icons.headset,
                        color: Colors.black,
                        size: 115,
                      ),
                    ],
                  ),
                  SelectableText(
                    '24 Ay Garanti',
                    style: TextStyle(
                      fontFamily: 'LuckiestGuy',
                      fontSize: 20,
                    ),
                  ),
                  SelectableText(
                    'Hafif ve Ayarlanabilir Kafa Bandı',
                    style: TextStyle(
                      fontFamily: 'LuckiestGuy',
                      fontSize: 20,
                      color: Colors.red,
                    ),
                  ),
                  SelectableText(
                    'Rainbow Efektli 50mm Neodimyum Sürücüler',
                    style: TextStyle(
                      fontFamily: 'LuckiestGuy',
                      fontSize: 15,
                    ),
                  ),
                  SelectableText(
                    'Net ve Doğal Mikrofon',
                    style: TextStyle(
                      fontFamily: 'LuckiestGuy',
                      fontSize: 20,
                      color: Colors.red,
                    ),
                  ),
                  SelectableText(
                    'Oyuncular İçin Tasarlanmış Kontrol Kumandası',
                    style: TextStyle(
                      fontFamily: 'LuckiestGuy',
                      fontSize: 15,
                    ),
                  ),
                  SelectableText(
                    '7.1 Ses Kalitesi',
                    style: TextStyle(
                      fontFamily: 'LuckiestGuy',
                      fontSize: 20,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.image,
                      size: 50,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => medusaresim()));
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
