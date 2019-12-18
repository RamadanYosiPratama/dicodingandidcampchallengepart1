import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'tempat.dart';

class DetailTempat extends StatelessWidget {
  final Tempat tempat;

  DetailTempat(this.tempat);

  @override
  Widget build(BuildContext context) {
    final myImage = Hero(
      tag: tempat.nama,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 2,
        decoration: new BoxDecoration(
            image: new DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(tempat.nama),
        )),
      ),
    );

    final myDetails = Material(
      color: Colors.white,
      elevation: 14.0,
      borderRadius: BorderRadius.circular(24.0),
      shadowColor: Color(0x802196F3),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        "${tempat.gambar}",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w300,
                            color: Colors.red),
                      ),
                    ),
                  ],
                )),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "${tempat.deskripsi}",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
          ],
        ),
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
          tempat.gambar,
            style: TextStyle(color: Colors.red),
          ),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              myImage,
              Padding(
                padding: const EdgeInsets.only(top: 12.0, left: 8.0, right: 8.0),
                child: Container(height: 325.0, child: SingleChildScrollView(child: myDetails)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
