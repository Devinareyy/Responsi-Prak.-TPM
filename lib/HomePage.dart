import 'package:flutter/material.dart';
import 'package:responsi_devina/listNasional.dart';
import 'package:responsi_devina/listOlahraga.dart';
import 'package:responsi_devina/listTeknologi.dart';
import 'package:responsi_devina/listTerbaru.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(50.0),
        child: ListView(
          children:<Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  cnnImage(),
                  rowButton(context),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget cnnImage(){
  return Column(
    children: [
      Padding(padding: EdgeInsets.only(top: 100)),
      ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.network('https://cdn.cnnindonesia.com/cnnid/images/logo_cnn_fav.png'),
      ),
    ],
  );
}

Widget rowButton(BuildContext context) {
  
  return Column(
    children: [
      Padding(padding: EdgeInsets.all(20)),
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => beritaTerbaru()
                  ),
                );
              },
              child: Text('TERBARU')
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 20)),
          ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => beritaNasional()
                  ),
                );
              },
              child: Text('NASIONAL')
          ),
        ],
      ),
      Padding(padding: EdgeInsets.all(10)),
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => beritaOlahraga()
                  ),
                );
              },
              child: Text('OLAHRAGA')
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 20)),
          ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => beritaTeknologi()
                  ),
                );
              },
              child: Text('TEKNOLOGI')
          ),
        ],
      ),
    ],
  );
}