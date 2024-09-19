import 'package:fluently_learning_app/components/phrase_item.dart';
import 'package:fluently_learning_app/models/item_model.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.color, required this.itemModel});

  final ItemModel itemModel;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: HexColor('#FEF6DB'),
            child: Image.asset(itemModel.image!),
          ),
          const SizedBox(
            width: 10,
          ),
        Expanded(
            child: PhraseItem(
                itemModel: itemModel,
                color: color
            ),
        ),
        ],
      ),
    );
  }
}
