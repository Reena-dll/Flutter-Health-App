import 'package:flutter/material.dart';
import 'veri_giris.dart';
import 'package:boykiloindeks/reuseble_card.dart';
import 'package:boykiloindeks/sabitler.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class KaloriSonuc extends StatelessWidget {
  final int Boyy;
  final int Kiloo;
  final int Yass;
  final String Cinsiyet;
  final String Calisma;
  KaloriSonuc( {@required this.Boyy, @required this.Kiloo,@required this.Yass, @required this.Cinsiyet, @required this.Calisma});

   double KaloriHesap(){
     if(Cinsiyet=="1")
       {
         double BMR = 66+(13.7*Kiloo) + (5*Boyy) - (6.8*Yass);
         if(Calisma=="bir")
           {
            double RMR = BMR*1.2;
             double AB = RMR*0.10;
             double EB= 600;
             double GunlukKalori = RMR+AB+EB;
             return GunlukKalori;
           }
         if(Calisma=="iki")
           {
             double RMR = BMR*1.375;
             double AB = RMR*0.10;
             double EB= 600;
             double GunlukKalori = RMR+AB+EB;
             return GunlukKalori;
           }
         if(Calisma=="uc")
           {
             double RMR = BMR*1.55;
             double AB = RMR*0.10;
             double EB= 600;
             double GunlukKalori = RMR+AB+EB;
             return GunlukKalori;
           }
         if(Calisma=="dort")
           {
             double RMR = BMR*1.725;
             double AB = RMR*0.10;
             double EB= 600;
             double GunlukKalori = RMR+AB+EB;
             return GunlukKalori;
           }
         if(Calisma=="bes")
           {
             double RMR = BMR*1.9;
             double AB = RMR*0.10;
             double EB= 600;
             double GunlukKalori = RMR+AB+EB;
             return GunlukKalori;
           }
       }
     if(Cinsiyet=="2")
     {
       double BMR = 665+(9.6*Kiloo) + (1.8*Boyy) - (4.7*Yass);
       if(Calisma=="bir")
       {
         double RMR = BMR*1.2;
         double AB = RMR*0.10;
         double EB= 600;
         double GunlukKalori = RMR+AB+EB;
         return GunlukKalori;
       }
       if(Calisma=="iki")
       {
         double RMR = BMR*1.375;
         double AB = RMR*0.10;
         double EB= 600;
         double GunlukKalori = RMR+AB+EB;
         return GunlukKalori;
       }
       if(Calisma=="uc")
       {
         double RMR = BMR*1.55;
         double AB = RMR*0.10;
         double EB= 600;
         double GunlukKalori = RMR+AB+EB;
         return GunlukKalori;
       }
       if(Calisma=="dort")
       {
         double RMR = BMR*1.725;
         double AB = RMR*0.10;
         double EB= 600;
         double GunlukKalori = RMR+AB+EB;
         return GunlukKalori;
       }
       if(Calisma=="bes")
       {
         double RMR = BMR*1.9;
         double AB = RMR*0.10;
         double EB= 600;
         double GunlukKalori = RMR+AB+EB;
         return GunlukKalori;
       }
     }

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Kalori Hesabı',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: (Container(
              child: Text(
                'Sonuç',textAlign: TextAlign.center,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
              ),
            )
            ),
          ),
          Expanded(
            flex: 4,
            child: Reusable_Card(
              renk: kAktifKartRengi,
              CardChild: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                  ),
                  Text(
                    "Günlük minimum almanız gereken kalori değeri:",textAlign: TextAlign.center,style: TextStyle(fontSize: 25,),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                  ),
                  Text(
                    KaloriHesap().toStringAsFixed(0)+" Kalori",style: TextStyle(
                    fontSize: 30,
                    color: Colors.green,
                    fontWeight: FontWeight.bold
                  ),
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
