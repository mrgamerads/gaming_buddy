import 'package:flutter/material.dart';
import 'package:gaming_buddy/src/models/item_model.dart';

class itemTile extends StatelessWidget {
  const itemTile({Key? key, required this.item,}) : super(key: key);

  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //Imagem
            Expanded(
              child: Image.asset(item.imgUrl),
            ),
            //Nome
            Text(item.itemName,
                  style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
            ),
          ],
        ),
      ),
    );
  }
}
