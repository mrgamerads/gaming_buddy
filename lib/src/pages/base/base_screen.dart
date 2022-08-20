import 'package:flutter/material.dart';
import 'package:gaming_buddy/src/pages/home/home_tab.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({Key? key}) : super(key: key);

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int currentIndex = 0;
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,
          children: [
            const HomeTab(),
            Container(color: Colors.yellow,),
            Container(color: Colors.blue,),
            Container(color: Colors.purple,),
          ],
        ),
        bottomNavigationBar: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30)),
              boxShadow: [
                BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
              ],
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
              child: BottomNavigationBar(
                currentIndex: currentIndex,
                onTap: (index){
                  setState (()
                  {currentIndex = index;
                  pageController.jumpToPage(index);
                  });
                },
                type: BottomNavigationBarType.fixed,
                backgroundColor: Colors.white,
                selectedItemColor: Colors.red,
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                      icon: Icon(Icons.add_reaction), label: 'Peça Ajuda'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.handshake), label: 'Buddy'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.chat), label: 'Chat'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.person), label: 'Perfil')
                ],
              ),
            )
        )
    );

  }
}
