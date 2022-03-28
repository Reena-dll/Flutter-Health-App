import 'package:boykiloindeks/main.dart';
import 'package:boykiloindeks/reuseble_card.dart';
import 'package:boykiloindeks/sabitler.dart';
import 'package:flutter/material.dart';
class SonucSayfasi extends StatelessWidget {
  SonucSayfasi( {@required this.bkiAciklama, @required this.bkiDeger,@required this.bkiSinif});

  final String bkiSinif;
  final String bkiDeger;
  final String bkiAciklama;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Beden Kitle İndeksi Hesapla',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
        Expanded(
          child: (Container(
           child: Text(
             'Sonuç',style: kSonucBaslik,
           ),
          )
          ),
        ),
         Expanded(
           flex: 5,
           child: Reusable_Card(
             renk: kAktifKartRengi,
             CardChild: Column(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               crossAxisAlignment: CrossAxisAlignment.center,
               children: <Widget>[
                 Text(
                   bkiDeger,style: kSonuc,
                 ),
                 Text(
                   bkiSinif,style: kBKIDeger,
                 ),
                 Text(
                   bkiAciklama,style: kBKIAciklama,
                   textAlign: TextAlign.center, // YAZILARI ORTALIYOR !!!
                 ),

               ],
             ),
           ),
         ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
                },
            child: Container(
              child: Center(child: Text('TEKRAR HESAPLA',style: kBuyukButon,)),
              color: kAltContainerRenk,
              height: kAltButonYukseklik,
              width: double.infinity,
              margin: EdgeInsets.only(top: 10.0),
            ),
          )
        ],
      ),
    );
  }
}
