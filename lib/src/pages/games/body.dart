import 'package:flutter/material.dart';
import 'package:gaming_buddy/src/my_flutter_app_icons.dart';
import 'package:flutter/services.dart';
import 'package:gaming_buddy/src/pages/auth/components/custom_text_field.dart';


class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {

  @override
  void initState(){
    super.initState();
    changeStatusBar();
  }

  changeStatusBar(){
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
      statusBarColor: Colors.red,
    ),);
  }

  rollbackStatusBar(){}
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Material(
        child: ListView(
          physics: const BouncingScrollPhysics(),
              children: [
                //Formulario
                Stack(
                  children: [
                      Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                        color: Colors.black,
                  ),
                ),
                    Positioned(
                        top: MediaQuery.of(context).size.height/2,
                        child: Container(
                          height: MediaQuery.of(context).size.height/2,
                          width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                topRight: Radius.circular(20.0),
                              ),
                            color: Colors.white,
                          ),
                        ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,),
                          onPressed: (){
                          Navigator.of(context).pop();
                        }
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 25.0, top: 60.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              'Elden Ring',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 40.0,
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 20.0,),
                            const Text(
                              'Jogadores',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            const Text(
                              '1-3',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 12.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            const Text(
                              'Co-op',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            const Text(
                              'Sim',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 12.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            const Text(
                              'Multiplayer',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            const Text(
                              'Sim',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 12.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 20.0,),
                            const Text(
                              'Plataformas',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 18.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 10.0,),
                            Row(
                              children: [
                                Container(
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
                                        size: 75,
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

                    //Formulario
                      Positioned(
                        top: (MediaQuery.of(context).size.height/6),
                        left: (MediaQuery.of(context).size.width/19),
                          child: Column(
                            children: [
                              Column(
                                children: const <Widget>[
                                  Image(
                                    image: AssetImage('lib/src/imgs/img_jogos/elden_ring.png'),
                                    fit: BoxFit.cover,
                                    height: 300.0,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                    Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height - 370.0,
                          left: 20.0,
                          right: 15.0,
                        ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Text('Título da Atividade'),
                          const SizedBox(height: 10.0,),
                          const CustomTextField(
                              icon: Icons.text_fields,
                              label: ''),

                          const Text('Qte de Players'),
                          const SizedBox(height: 10.0,),
                          const CustomTextField(
                              icon: Icons.text_fields,
                              label: ''),

                          const Text('Horário'),
                          const SizedBox(height: 10.0,),
                          const CustomTextField(
                              icon: Icons.text_fields,
                              label: ''),

                          const Text('Descrição'),
                          const SizedBox(height: 10.0,),
                          const CustomTextField(
                              icon: Icons.text_fields,
                              label: ''),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              SizedBox(
                                height: 50,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                  ),
                                      onPressed: (){
                                        Navigator.of(context).pop();
                                      },
                                      child: const Text (
                                          'Entrar',
                                          style: TextStyle(
                                          fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ]
        )
    );
  }
}

