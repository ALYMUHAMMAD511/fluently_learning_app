import 'package:fluently_learning_app/components/item.dart';
import 'package:fluently_learning_app/models/item_model.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class NumbersScreen extends StatelessWidget {
  const NumbersScreen({super.key});

  final List<ItemModel> numbers = const [
    ItemModel(image: 'assets/images/numbers/number_one.png',
        japaneseName: 'Ichi',
        englishName: 'One',
        sound: 'sounds/numbers/number_one_sound.mp3',
    ),
    ItemModel(image: 'assets/images/numbers/number_two.png',
      japaneseName: 'Ni',
      englishName: 'Two',
      sound: 'sounds/numbers/number_two_sound.mp3',
    ),
    ItemModel(image: 'assets/images/numbers/number_three.png',
      japaneseName: 'San',
      englishName: 'Three',
      sound: 'sounds/numbers/number_three_sound.mp3',
    ),
    ItemModel(image: 'assets/images/numbers/number_four.png',
      japaneseName: 'Shi',
      englishName: 'Four',
      sound: 'sounds/numbers/number_four_sound.mp3',
    ),
    ItemModel(image: 'assets/images/numbers/number_five.png',
      japaneseName: 'Go',
      englishName: 'Five',
      sound: 'sounds/numbers/number_five_sound.mp3',
    ),
    ItemModel(image: 'assets/images/numbers/number_six.png',
      japaneseName: 'Roku',
      englishName: 'Six',
      sound: 'sounds/numbers/number_six_sound.mp3',
    ),
    ItemModel(image: 'assets/images/numbers/number_seven.png',
      japaneseName: 'Shichi',
      englishName: 'Seven',
      sound: 'sounds/numbers/number_seven_sound.mp3',
    ),
    ItemModel(image: 'assets/images/numbers/number_eight.png',
      japaneseName: 'Hachi',
      englishName: 'Eight',
      sound: 'sounds/numbers/number_eight_sound.mp3',
    ),
    ItemModel(image: 'assets/images/numbers/number_nine.png',
      japaneseName: 'Kyuu',
      englishName: 'Nine',
      sound: 'sounds/numbers/number_nine_sound.mp3',
    ),
    ItemModel(image: 'assets/images/numbers/number_ten.png',
      japaneseName: 'Juu',
      englishName: 'Ten',
      sound: 'sounds/numbers/number_ten_sound.mp3',
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
            'Numbers',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          backgroundColor: HexColor('#6B4226'),
        ),
        body: ListView.separated(
          itemCount: numbers.length,
          itemBuilder: (BuildContext context, int index) => Item(
            itemModel: numbers[index],
            color: HexColor('#EF9235'),
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
