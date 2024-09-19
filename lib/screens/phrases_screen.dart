import 'package:fluently_learning_app/components/phrase_item.dart';
import 'package:fluently_learning_app/models/item_model.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class PhrasesScreen extends StatelessWidget {
  const PhrasesScreen({super.key});

  final List<ItemModel> phrases = const [
    ItemModel(japaneseName: 'Kimasu ka?',
      englishName: 'Are you coming?',
      sound: 'sounds/phrases/are_you_coming.wav',
    ),
    ItemModel(
      japaneseName: 'Wasurezu ni kōdoku shite kudasai',
      englishName: 'Do not forget to subscribe',
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
    ),
    ItemModel(
      japaneseName: 'Go kibun wa ikagadesu ka?',
      englishName: 'How are you feeling?',
      sound: 'sounds/phrases/how_are_you_feeling.wav',
    ),
    ItemModel(
      japaneseName: 'Watashi wa anime ga daisukidesu',
      englishName: 'I love anime',
      sound: 'sounds/phrases/i_love_anime.wav',
    ),
    ItemModel(
      japaneseName: 'Puroguramingu ga daisukidesu',
      englishName: 'I love programming',
      sound: 'sounds/phrases/i_love_programming.wav',
    ),
    ItemModel(
      japaneseName: 'Puroguramingu wa kantandesu',
      englishName: 'Programming is easy',
      sound: 'sounds/phrases/programming_is_easy.wav',
    ),
    ItemModel(
      japaneseName: 'Anata no namae wa nanidesu ka?',
      englishName: 'What is your name?',
      sound: 'sounds/phrases/what_is_your_name.wav',
    ),
    ItemModel(
      japaneseName: 'Doko ni iku no?',
      englishName: 'Where are you going?',
      sound: 'sounds/phrases/where_are_you_going.wav',
    ),
    ItemModel(
      japaneseName: 'Hai, ikimasu',
      englishName: 'Yes, I am coming',
      sound: 'sounds/phrases/yes_im_coming.wav',
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
          'Phrases',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        backgroundColor: HexColor('#6B4226'),
      ),
      body: ListView.separated(
        itemCount: phrases.length,
        itemBuilder: (BuildContext context, int index) => PhraseItem(
            itemModel: phrases[index],
            color: HexColor('#53AFD5'),
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