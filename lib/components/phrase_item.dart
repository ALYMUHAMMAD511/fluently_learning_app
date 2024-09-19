import 'package:flutter/material.dart';
import '../models/item_model.dart';
import 'item_info.dart';

class PhraseItem extends StatelessWidget {
  const PhraseItem({super.key, required this.itemModel, required this.color});

  final ItemModel itemModel;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: ItemInfo(
        itemModel: itemModel,
        color: color,
      ),
    );
  }
}
