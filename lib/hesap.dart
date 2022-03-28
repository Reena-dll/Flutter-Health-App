import 'package:flutter/material.dart';
import 'dart:math';
class BKIHesap{
  BKIHesap( {this.bireyBoy,this.bireyKilo} );
  final int bireyBoy;
  final int bireyKilo;
   double _bki;

  String bkihesapla(){
    _bki = bireyKilo/pow(bireyBoy/100,2);
    return _bki.toStringAsFixed(1);
  }

  String sonucSiniflama(){
    if(_bki>=25)
      return 'Kilolu';
    else if(_bki>=18.5)
      return 'Normal';
    else
      return 'Zayıf';
  }

  String sonucAciklamasi(){
    if(_bki>=25)
      return 'Kilonuz olmanız gerekenden yüksek, Egzersiz yapmanızı tavsiye ederim.';
    else if(_bki>=18.5)
      return 'Normal kilodasınız. Yediklerinize ve egzersizlerinize devam edebilirsiniz.';
    else
      return 'Normal kilonuzun altındasınız. Yediklerinize dikkat edin.';
  }

}