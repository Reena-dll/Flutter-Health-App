import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'veri_giris.dart';
import 'package:boykiloindeks/Urun_Bilgi.dart';
import 'kalori_hesap.dart';



class Home_Page extends StatefulWidget {
  @override
  _Home_PageState createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1D1F33),
        title: Center(child: Text("FİTKA")),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top:100),
          ),
          FlatButton(
            onPressed: (){
              setState(() {
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) =>  VeriGiris()));
              });
            },
           child:Container(
              width: double.infinity,
              height: 75,
              color: Color(0xFF1D1F33),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  Center(
                    child: Icon(
                      Icons.local_hospital,
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left : 20),
                  ),
                  Text(
                    "Beden Kitle İndeksi Hesaplama",style: TextStyle(
                    fontSize: 20,
                  ),
                  )
                ],
              ),
            ),
          ),
          FlatButton(
            onPressed: (){
              setState(() {
               Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) =>  KaloriHesap()));
              });
            },
            child:Container(
              width: double.infinity,
              height: 75,
              color: Color(0xFF1D1F33),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  Center(
                    child: Icon(
                      Icons.local_hospital,
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left : 20),
                  ),
                  Text(
                    "Kalori Hesaplama",style: TextStyle(
                    fontSize: 20,
                  ),
                  )
                ],
              ),
            ),
          ),
          FlatButton(
            onPressed: (){
              setState(() {
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) =>  RemoteJson()));
              });
            },
            child:Container(
              width: double.infinity,
              height: 75,
              color: Color(0xFF1D1F33),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  Center(
                    child: Icon(
                      Icons.local_hospital,
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left : 20),
                  ),
                  Text(
                    "Besin Bilgileri",style: TextStyle(
                    fontSize: 20,
                  ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom:100),
          ),
        ],
      ),
    );
  }
}
