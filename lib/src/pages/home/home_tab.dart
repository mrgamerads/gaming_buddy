import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:gaming_buddy/src/models/item_model.dart';
import 'package:gaming_buddy/src/pages/games/games.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);



  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {

  String selectedCategory = 'Ação';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //App bar
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('lib/src/imgs/5.png', height: 200,),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              top: 15,
              right: 15,
            ),
            child: GestureDetector(
              onTap: () {},
              child: Badge(
                badgeColor: Colors.red,
                badgeContent: const Text ('2', style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),),
                child: const Icon(
                  Icons.notifications,
                ),
              ),
            ),
          ),
        ],
      ),

      //Body
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Campo de Pesquisa
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  isDense: true,
                  hintText: 'Pesquise o Jogo.....',
                  hintStyle: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 14,
                  ),
                  prefixIcon: const Icon(Icons.search,
                    color: Colors.red,
                    size: 21,),

                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(60),
                      borderSide: const BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      )
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30,),
            //Ação
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text(
                    "Ação",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (c) {
                      return const GamesScreen();
                    })
                );
              },
              child: SizedBox(
                height: 200,
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    makeItem(image: 'lib/src/imgs/img_jogos/gears_5.jpg',
                        title: 'Gears 5'),
                    makeItem(image: 'lib/src/imgs/img_jogos/gotham_knights.jpg',
                        title: 'Gotham Knights'),
                    makeItem(image: 'lib/src/imgs/img_jogos/far_cry_6.png',
                        title: 'FarCry 6'),
                    makeItem(image: 'lib/src/imgs/img_jogos/gta_v.png',
                        title: 'GTA V'),
                  ],
                ),
              ),
            ),

            //Aventura
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Aventura",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
            ),

            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (c) {
                      return GamesScreen();
                    })
                );
              },
              child: SizedBox(
                height: 200,
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    makeItem(image: 'lib/src/imgs/img_jogos/ac_valhalla_1.jpg',
                        title: 'Assassins Creed Valhalla'),
                    makeItem(image: 'lib/src/imgs/img_jogos/download.jpg',
                        title: 'Elden Ring'),
                    makeItem(
                        image: 'lib/src/imgs/img_jogos/Horizon-Forbidden-West-titulo.jpg',
                        title: 'Horizon: Forbidden West'),
                    makeItem(
                        image: 'lib/src/imgs/img_jogos/forza_horizon_5.jpg',
                        title: 'Forza Horizon 5'),
                  ],
                ),
              ),
            ),

            //FPS
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "FPS",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
            ),

            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (c) {
                      return const GamesScreen();
                    })
                );
              },
              child: SizedBox(
                height: 200,
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    makeItem(
                        image: 'lib/src/imgs/img_jogos/destiny-2-game-destiny-logo.jpg',
                        title: 'Destiny 2'),
                    makeItem(
                        image: 'lib/src/imgs/img_jogos/valorant-logo-FAB2CA0E55-seeklogo.com.png',
                        title: 'Valorant'),
                    makeItem(
                        image: 'lib/src/imgs/img_jogos/call_of_duty_warzone.jpg',
                        title: 'Call Of Duty: Warzone'),
                    makeItem(image: 'lib/src/imgs/img_jogos/Halo_Infinite.png',
                        title: 'Halo Infinite'),
                  ],
                ),
              ),
            ),

            //RPG
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "RPG",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
            ),

            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (c) {
                      return const GamesScreen();
                    })
                );
              },
              child: SizedBox(
                height: 200,
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    makeItem(image: 'lib/src/imgs/img_jogos/197480.jpg',
                        title: 'Zelda: Breath Of The Wild'),
                    makeItem(image: 'lib/src/imgs/img_jogos/diablo_3.jpg',
                        title: 'Diablo 3'),
                    makeItem(image: 'lib/src/imgs/img_jogos/genshin_impact.jpg',
                        title: 'Genshin Impact'),
                    makeItem(image: 'lib/src/imgs/img_jogos/fallout_76.jpg',
                        title: 'Fallout 76'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }

  Widget makeItem({image, title}) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: Container(
        margin: const EdgeInsets.only(
          left: 18,
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