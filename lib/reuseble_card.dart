import 'package:flutter/material.dart';

class Reusable_Card extends StatelessWidget {
  Reusable_Card({@required this.renk, this.CardChild, this.cnstyTiklama});
  final Color renk;
  final Widget CardChild;
  final Function cnstyTiklama;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: cnstyTiklama,
      child: Container(
        child: CardChild,
        margin: EdgeInsets.all(15.0), // Her alandan 15 piksel boşluk bıraktık.
        decoration: BoxDecoration(
          // Kutu dekerasyonu- Container
          borderRadius: BorderRadius.circular(
              10.0), // Yuvarlak bir görsellik vereceğimizden dolayı circulur kullandık.
          color:
          renk, // Rengi burada atamamızın sebebi ise, BoxDeceration kullanmamızdır.
        ),
      ),
    );
  }
}
