import 'package:flutter/material.dart';
import 'package:gaming_buddy/src/my_flutter_app_icons.dart';

class Perfil extends StatelessWidget {
  const Perfil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings),
            iconSize: 20.0,
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              child: const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 140,
                  vertical: 20,
                ),
                child: CircleAvatar(
                  radius: 55,
                  backgroundImage: AssetImage('lib/src/imgs/img_perfil/Screenshot_7.png'),
                ),
              ),
            ),
            const Text('João Maria',
              style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              ),
            ),
            const Text('Jogador',
              style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              ),
            ),

            Column(
              children: const <Widget>[
                Image(image: AssetImage('lib/src/imgs/botoes perfil.png'),
                  fit: BoxFit.cover,
                  height: 250,
                  width: 350,
                ),
              ],
            ),

            Container(
              alignment: Alignment.centerLeft,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Sobre Mim', style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  ),
                ),
              ),
            ),

            Container(
              alignment: Alignment.centerLeft,
              child: const Padding(
                padding: EdgeInsets.all(9.0),
                child: Text('Sou jogador de videogames desde criacinha! Comecei a jogar com um velho Playstation 1 e até hoje não paro. Adoro jogar online em modo cooperativo e fazer amigos! Sejam bem-vindos! Me siga, me acompanhe e conecte comigo para jogatinas online todo final de semana.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            Container(
              alignment: Alignment.centerLeft,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Plataformas',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: const Center(
                      child: Icon(MyFlutterApp.playstation_logo,
                        size: 75,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 60.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: const Center(
                      child: Icon(MyFlutterApp.xbox_logo,
                        size: 80,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
