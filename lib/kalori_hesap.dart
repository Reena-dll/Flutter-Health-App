import 'dart:convert';

import 'package:boykiloindeks/Kalori_Sonuc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'ikon_icerik.dart';
import 'reuseble_card.dart';
import 'sabitler.dart';
import 'sonuc.dart';
import 'hesap.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class KaloriHesap extends StatefulWidget {
  @override
  _KaloriHesapState createState() => _KaloriHesapState();
}

class _KaloriHesapState extends State<KaloriHesap> {
  //
  int selectedRadio;

  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
  }

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  int boy = 180;
  int kilo = 60;
  int yas = 20;

  @override
  List<DropdownMenuItem<String>> listDrop = [];
  String selected = null;


  void loadData() {
    listDrop = [];
    listDrop.add(new DropdownMenuItem(
      child: new Text("Hareketsiz."),
      value: "bir",
    ));
    listDrop.add(new DropdownMenuItem(
      child: new Text("Biraz Aktif."),
      value: "iki",
    ));
    listDrop.add(new DropdownMenuItem(
      child: new Text("Hareketsiz iş, Haftada 3-4 gün spor. "),
      value: "uc",
    ));
    listDrop.add(new DropdownMenuItem(
      child: new Text("Ortalama iş, Haftada 5-7 gün spor."),
      value: "dort",
    ));
    listDrop.add(new DropdownMenuItem(
      child: new Text("Yoğun iş, Profesyonel seviyede spor."),
      value: "bes",
    ));
  }

  Widget build(BuildContext context) {
    loadData();
    return Scaffold(
      appBar: AppBar(
        title: Text("Kolari Hesabı"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Divider(
            height: 20,
            color: Colors.green,
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: [
                  Text(
                    "Erkek",
                    style: TextStyle(fontSize: 20),
                  ),
                  Radio(
                    value: 1,
                    groupValue: selectedRadio,
                    activeColor: Colors.blue,
                    onChanged: (val) {
                      print(val);
                      print(selected);
                      setSelectedRadio(val);
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: 2,
                    groupValue: selectedRadio,
                    activeColor: Colors.pinkAccent,
                    onChanged: (val) {
                      print(val);
                      setSelectedRadio(val);
                    },
                  ),
                  Text(
                    "Kadın",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ],
          ),
          Divider(
            height: 20,
            color: Colors.green,
          ),
          Expanded(
              child: Reusable_Card(
            renk: kAktifKartRengi,
            CardChild: (Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'BOY',
                  style: kEtiketStili,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  // CM Yİ AŞAĞIYA ÇEKTİK !
                  children: <Widget>[
                    Text(boy.toString(), style: kSayiStili),
                    Text(
                      'CM',
                      style: kEtiketStili,
                    ),
                  ],
                ),
                Slider(
                  value: boy.toDouble(),
                  min: 120,
                  max: 220,
                  activeColor: Color(0xFFEB1555),
                  inactiveColor: Color(0xFF8D8E98),
                  onChanged: (double yeniBoyDeger) {
                    setState(() {
                      boy = yeniBoyDeger.round();
                    });
                  },
                ),
              ],
            )),
          )),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: Reusable_Card(
                  renk: kAktifKartRengi,
                  CardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'KİLO',
                        style: kEtiketStili,
                      ),
                      Text(
                        kilo.toString(),
                        style: kSayiStili,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          yuvarlakIkonButon(
                            ikon: FontAwesomeIcons.minus,
                            tiklama: () {
                              setState(() {
                                kilo--;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          yuvarlakIkonButon(
                            ikon: FontAwesomeIcons.plus,
                            tiklama: () {
                              setState(() {
                                kilo++;
                              });
                            },
                          )
                        ],
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: Reusable_Card(
                  renk: kAktifKartRengi,
                  CardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'YAŞ',
                        style: kEtiketStili,
                      ),
                      Text(
                        yas.toString(),
                        style: kSayiStili,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          yuvarlakIkonButon(
                            ikon: FontAwesomeIcons.minus,
                            tiklama: () {
                              setState(() {
                                yas--;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          yuvarlakIkonButon(
                            ikon: FontAwesomeIcons.plus,
                            tiklama: () {
                              setState(() {
                                yas++;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ))
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Çalışma Biçimi: ",
                style: TextStyle(fontSize: 15),
              ),
              Padding(
                padding: EdgeInsets.only(right: 5),
              ),
              DropdownButton(
                items: listDrop,
                value: selected,
                hint: new Text("Lütfen Seçim Yapınız"),
                onChanged: (value) {
                  selected = value;
                  setState(() {
                    print(selected);
                  });
                },
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              BKIHesap calc = BKIHesap(bireyBoy: boy, bireyKilo: kilo);
              if (selectedRadio != 1 || selectedRadio != 2 && selected!="bir" || selected!="iki" || selected!="uc" || selected != "dort"|| selected!="bes") {
                print("hata!");
              }
              if(selectedRadio== 1 || selectedRadio==2)
                {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => KaloriSonuc(
                      Boyy: boy,
                      Kiloo: kilo,
                      Yass: yas,
                      Cinsiyet: selectedRadio.toString(),
                      Calisma: selected,
                    ),
                  ),
                );
                }
            },
            child: Container(
              child: Center(
                  child: Text(
                'HESAPLA',
                style: kBuyukButon,
              )),
              color: kAltContainerRenk,
              height: 65,
              width: double.infinity,
              margin: EdgeInsets.only(top: 10.0),
            ),
          )
        ],
      ),
    );
  }
}

class yuvarlakIkonButon extends StatelessWidget {
  yuvarlakIkonButon({@required this.ikon, @required this.tiklama});

  final IconData ikon;
  final Function tiklama;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(ikon),
      onPressed: tiklama,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
