import 'package:flutter/material.dart';


class DetailPage extends StatelessWidget {

  final String urunAd;
  final String urunKategori;
  final String urunFoto;
  final String urunKalori;
  final String urunHakkinda;


  DetailPage(this.urunAd,this.urunKategori,this.urunFoto,this.urunKalori,this.urunHakkinda);// Burada ise sayfa çağırıldığında bu değişkenlerin zorunlu verilmesini sağladık.

  Text textControl(String text, Color renk, double boyut)
  {
    return  Text('$text',style: TextStyle(
      fontSize: boyut,
      fontWeight: FontWeight.bold,
      color: renk,
    ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0D22),
      appBar: AppBar(
        title: Text(urunAd),
      ),
      body: Container(
        padding: EdgeInsets.all(25.0),
        child: Center(
          child: Column(//
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  child: new CircleAvatar(
                      backgroundImage: NetworkImage(urunFoto),
                      foregroundColor: Colors.white, //
                      backgroundColor:  Colors.blue //
                  ),
                  width: 200.0, // Container genişlik
                  height: 200.0, // // Yükseklik
                  padding: const EdgeInsets.all(2.0),
                  decoration: new BoxDecoration(
                    color: const Color(0xFFFFFFFF),
                    shape: BoxShape.circle,
                  )
              ),
              Padding( //
                padding: EdgeInsets.only(top: 15.0),
              ),
              textControl(urunAd,Colors.white,25.0),//
              Padding(
                padding: EdgeInsets.only(top: 10),
              ),
              textControl(urunKategori,Colors.white,15.0),
              SizedBox(
                height: 50.0,
                width: 250.0,
                child: Divider(color: Colors.white,),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 5.0,horizontal: 5.0),
                child: ListTile( //
                  leading: Icon(Icons.local_hospital,color: Colors.white),
                  title: textControl(urunKalori, Colors.white,20.0),

                ),
              ),
              Card( //
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: textControl(urunHakkinda, Colors.white, 15.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}