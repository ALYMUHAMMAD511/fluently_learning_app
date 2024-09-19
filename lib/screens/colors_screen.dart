import 'package:fluently_learning_app/components/item.dart';
import 'package:fluently_learning_app/models/item_model.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ColorsScreen extends StatelessWidget {
  const ColorsScreen({super.key});

  final List<ItemModel> colors = const [
    ItemModel(image: 'assets/images/colors/color_black.png',
      japaneseName: 'Kuro',
      englishName: 'Black',
      sound: 'sounds/colors/black.wav',
    ),
    ItemModel(image: 'assets/images/colors/color_brown.png',
      japaneseName: 'Cha',
      englishName: 'Brown',
      sound: 'sounds/colors/brown.wav',
    ),
    ItemModel(image: 'assets/images/colors/color_dusty_yellow.png',
      japaneseName: 'Dasutiierō',
      englishName: 'Dusty Yellow',
      sound: 'sounds/colors/dusty yellow.wav',
    ),
    ItemModel(image: 'assets/images/colors/color_gray.png',
      japaneseName: 'Hai',
      englishName: 'Gray',
      sound: 'sounds/colors/gray.wav',
    ),
    ItemModel(image: 'assets/images/colors/color_green.png',
      japaneseName: 'Midori',
      englishName: 'Green',
      sound: 'sounds/colors/green.wav',
    ),
    ItemModel(image: 'assets/images/colors/color_red.png',
      japaneseName: 'Aka',
      englishName: 'Red',
      sound: 'sounds/colors/red.wav',
    ),
    ItemModel(image: 'assets/images/colors/color_white.png',
      japaneseName: 'Shiro',
      englishName: 'White',
      sound: 'sounds/colors/white.wav',
    ),
    ItemModel(image: 'assets/images/colors/yellow.png',
      japaneseName: 'Kiiro',
      englishName: 'Yellow',
      sound: 'sounds/colors/yellow.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.white,
        ),
        title: const Text(
          'Colors',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        backgroundColor: HexColor('#6B4226'),
      ),
      body: ListView.separated(
        itemCount: colors.length,
        itemBuilder: (BuildContext context, int index) => Item(
          itemModel: colors[index],
          color: HexColor('#854CAE'),
        ),
        physics: const BouncingScrollPhysics(),
        separatorBuilder: (BuildContext context, int index) => const Divider(
          thickness: 1,
          height: 1,
          color: Colors.grey,
        ),
      ),
    );
  }
}