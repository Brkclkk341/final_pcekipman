import 'package:flutter/material.dart';
import 'package:ekipman_pc/models/albums_model.dart';
import 'package:ekipman_pc/services/albums_services.dart';
import 'dart:math';

class AlbumsView extends StatefulWidget {
  @override
  _AlbumsViewState createState() => _AlbumsViewState();
}

class _AlbumsViewState extends State<AlbumsView> {
  Future<List<Albums>> futureData;

  @override
  void initState() {
    super.initState();
    futureData = fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: Text('Ürünlerin Karşılaştırılması',style: TextStyle(fontFamily: 'BlackOpsOne'),),
      ),
      body: Center(
        child: FutureBuilder<List<Albums>>(
          future: futureData,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<Albums> data = snapshot.data;
              return ListView.separated(
                itemCount: data.length,
                itemBuilder: (BuildContext context, int index) {
                  Random random = new Random();
                  int colorCode = random.nextInt(10);
                  return Container(
                    height: 50,
                    color: Colors.amber[colorCode * 100],
                    child: Row(
                      children: [
                        Icon(Icons.api),
                        Icon(Icons.http),
                        SizedBox(width: 20,),
                        Text("Marka: " + data[index].marka),
                        SizedBox(width: 20,),
                        Text("Model: " + data[index].model),
                        SizedBox(width: 20,),
                        Text("Fiyat: " + data[index].fiyat.toString()),
                      ],
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
              );
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            // By default show a loading spinner.
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}