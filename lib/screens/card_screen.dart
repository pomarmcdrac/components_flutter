import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget') ,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 10 ),
        children: const [

          CustomCardType1(),
          SizedBox( height: 20, ),
          CustomCardType2(name: 'Anime',imagesUrl: 'http://www.solofondos.com/wp-content/uploads/2016/04/anime-girl-sky-clouds-sunrise-scenery-4K-67.jpg',),
          SizedBox( height: 20, ),
          CustomCardType2(name: 'Paisaje',imagesUrl: 'https://wallpaperaccess.com/full/628286.jpg',),
          SizedBox( height: 20, ),
          CustomCardType2(imagesUrl: 'https://2.bp.blogspot.com/-TRiBWTjJdP8/XExwu25CGcI/AAAAAAAABas/LgpoRYKwIO8SKK80epHArlVaSPufQeESACKgBGAs/w919/anime-moon-landscape-horizon-46-4K.jpg',),
          SizedBox( height: 100, ),
        ],
      )
    );
  }
}

