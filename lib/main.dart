import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';

void main() {
  runApp(BenimUygulamam());
}

class BenimUygulamam  extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          centerTitle:true,
          title: Text(
            'Bugün Ne Yesem',
            style:TextStyle(color: Colors.black),
          ),
      ),
        body:YemekSayfasi(),
    )
    );
  }

}

class YemekSayfasi extends StatefulWidget {

  @override
  State<YemekSayfasi> createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int corbaNo=Random().nextInt(5)+1;
  int yemekNo=Random().nextInt(5)+1;
  int tatliNo=Random().nextInt(5)+1;
  List<String> corbaAdlari=[
    'mercimek','tarhana','tavuksuyu','dugun corbasi','yogurtlu corba'
  ];

  List<String> yemekAdlari=[
    'karniyarik','manti','kurufasulye','icli köfte','ızgara balık'
  ];

  List<String> tatliAdlari=[
    'kadayıf','baklava','sütlac','kazandibi','dondurma'
  ];


  void yenile() {
    setState(() {
      corbaNo=Random().nextInt(5)+1;
      yemekNo=Random().nextInt(5)+1;
      tatliNo=Random().nextInt(5)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded
            (child : Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextButton(
                onPressed:() {
                  yenile();
                  },
                child: Image.asset('assets/corba_$corbaNo.jpg')),
          ),
          ),
          Text(
            corbaAdlari[corbaNo-1],
            style: TextStyle(fontSize: 25),
          ),
          Container(
            width: 200,
            child: Divider(
              height:7,
              color: Colors.black12,
            ),
          ),



          Expanded(
            child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextButton(
                onPressed: () {
                  yenile();
                  },
                child: Image.asset('assets/yemek_$yemekNo.jpg')
            ),
          ),
          ),
          Text(
            yemekAdlari[yemekNo-1],
            style: TextStyle(fontSize: 25),
          ),
          Container(
            width: 200,
            child: Divider(
              height:7,
              color: Colors.black12,
            ),
          ),

          Expanded(
            child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextButton(
                onPressed: () {
                  yenile();
                  },
                child: Image.asset('assets/tatli_$tatliNo.jpg')
            ),
          ),
          ),
          Text(
            tatliAdlari[tatliNo-1],
            style: TextStyle(fontSize: 25),
          ),
          Container(
            width: 200,
            child: Divider(
              height:7,
              color: Colors.black12,
            ),
          ),

        ],
      ),
    );
  }
}


