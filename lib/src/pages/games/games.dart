import 'package:flutter/material.dart';
import 'package:gaming_buddy/src/models/item_model.dart';

class GamesScreen extends StatelessWidget {
  const GamesScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Image.asset('lib/src/imgs/img_jogos/Halo_Infinite.png'))
        ],
      ),
    );
  }
}
