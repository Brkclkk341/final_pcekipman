import 'package:flutter/material.dart';

class hyperxresim extends StatefulWidget {
  @override
  _hyperxresimState createState() => _hyperxresimState();
}

class _hyperxresimState extends State<hyperxresim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('HYPERX Resimler', style: TextStyle(fontFamily: 'BlackOpsOne'),),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Table(
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: [
          TableRow(children: [
            RotatedBox(
               quarterTurns: 3,
                child: Text(
                    'Ürünün Yandan Resmi',
                     style: TextStyle(
                       fontSize: 20,
                       height: 6,
                       backgroundColor: Colors.red,
                     ),
                ),
            ),
            Image.asset('assets/images/hyperx2.jpg'),
          ],),

          TableRow(children: [
            RotatedBox(
              quarterTurns: 1,
              child: Text(
                'Ürün ile Birlikte Gelen Parçalar',
                style: TextStyle(
                  fontSize: 20,
                  height: 7.5,
                  backgroundColor: Colors.black,
                  color: Colors.white,
                ),
              ),
            ),
            Image.asset('assets/images/hyperx1.jpg'),
          ],
          ),
          TableRow(children: [
            RotatedBox(
              quarterTurns: 3,
              child: Text(
                'Ürünün Kutusu',
                style: TextStyle(
                  fontSize: 20,
                  height: 6,
                  backgroundColor: Colors.red,
                ),
              ),
            ),
            Image.asset('assets/images/hyperx3.jpg'),
          ],
          ),
        ],
      )
    );
  }
}
