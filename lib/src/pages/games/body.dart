import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;

    return Material(
        child: ListView(
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
    ]
    ),
    ]

        )
    );
  }
}

