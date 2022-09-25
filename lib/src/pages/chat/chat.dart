import 'package:flutter/material.dart';
import 'package:gaming_buddy/src/widgets/category_selector.dart';
import 'package:gaming_buddy/src/widgets/favorite_contacts.dart';
import 'package:gaming_buddy/src/models/message_model.dart';

import '../../widgets/recent_chats.dart';

class chat extends StatefulWidget {
  const chat({Key? key}) : super(key: key);

  @override
  State<chat> createState() => _chatState();
}

class _chatState extends State<chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          iconSize: 30.0,
          color: Colors.white,
          onPressed: () {},
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('lib/src/imgs/5.png', height: 200,),
          ],
        ),
        backgroundColor: Colors.black,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      
      //chat      
      body: Column(
        children: <Widget>[
          const CategorySelector(),
          Expanded(
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.red.withAlpha(600),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                )
              ),
              child: Column(
                children: const <Widget>[
                   FavoriteContacts(),
                   RecentChats(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
