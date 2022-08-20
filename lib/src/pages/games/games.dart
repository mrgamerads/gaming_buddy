import 'package:flutter/material.dart';
import 'package:gaming_buddy/src/models/item_model.dart';
import 'package:gaming_buddy/src/pages/games/body.dart';

class GamesScreen extends StatelessWidget {
  const GamesScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(
      ),
    );
  }
}
