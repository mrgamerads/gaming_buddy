import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:gaming_buddy/src/pages/buddy/squad.dart';

class BuddyPage extends StatelessWidget {
  const BuddyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('lib/src/imgs/5.png', height: 200,),
          ],
        ),
        backgroundColor: Colors.black,
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              right: 10,
            ),
            child: GestureDetector(
              onTap: () {},
                child: const Icon(
                  Icons.filter_alt,
                ),
              ),
            ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Feed de Esquadrões
            const SizedBox(
              height: 20,
            ),

            GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (c) {
                        return const squadScreen();
                      })
                  );
                },
              child: SizedBox(
                height: 650,
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    makeItem(image: 'lib/src/imgs/img_jogos/gears_5.jpg',
                        title: 'Esquadrão para jogar Multiplayer'),
                    makeItem(image: 'lib/src/imgs/img_jogos/destiny-2-game-destiny-logo.jpg',
                        title: 'Squad para jogar Incursão Queda do Rei'),
                    makeItem(image: 'lib/src/imgs/img_jogos/destiny-2-game-destiny-logo.jpg',
                        title: 'Squad para jogar Incursão Camara de Cristal'),
                    makeItem(image: 'lib/src/imgs/img_jogos/download.jpg',
                        title: 'Elden Ring'),
                  ],
                ),
              ),
            ),
          ],
        ),
      )
    );
  }


  Widget makeItem({image, title}) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: Container(
        margin: const EdgeInsets.only(
          bottom: 18,
          left: 18,
          right: 18,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.2),
              ],
            ),
          ),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(title, style: const TextStyle(
              color: Colors.white,
            ),
            ),
          ),
        ),
      ),
    );
  }
}
