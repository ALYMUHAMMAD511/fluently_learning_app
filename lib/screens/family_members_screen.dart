import 'package:fluently_learning_app/components/item.dart';
import 'package:fluently_learning_app/models/item_model.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class FamilyMembersScreen extends StatelessWidget {
  const FamilyMembersScreen({super.key});

  final List<ItemModel> familyMembers = const [
    ItemModel(image: 'assets/images/family_members/family_father.png',
      japaneseName: 'Otousan',
      englishName: 'Father',
      sound: 'sounds/family_members/father.wav',
    ),
    ItemModel(image: 'assets/images/family_members/family_mother.png',
      japaneseName: 'Okaasan',
      englishName: 'Mother',
      sound: 'sounds/family_members/mother.wav',
    ),
    ItemModel(image: 'assets/images/family_members/family_grandfather.png',
      japaneseName: 'Ojiisan',
      englishName: 'Grandfather',
      sound: 'sounds/family_members/grand father.wav',
    ),
    ItemModel(image: 'assets/images/family_members/family_grandmother.png',
      japaneseName: 'Obaasan',
      englishName: 'Grandmother',
      sound: 'sounds/family_members/grand mother.wav',
    ),
    ItemModel(image: 'assets/images/family_members/family_son.png',
      japaneseName: 'Musuko',
      englishName: 'Son',
      sound: 'sounds/family_members/son.wav',
    ),
    ItemModel(image: 'assets/images/family_members/family_daughter.png',
      japaneseName: 'Musume',
      englishName: 'Daughter',
      sound: 'sounds/family_members/daughter.wav',
    ),
    ItemModel(image: 'assets/images/family_members/family_older_brother.png',
      japaneseName: 'Ani',
      englishName: 'Older Brother',
      sound: 'sounds/family_members/older bother.wav',
    ),
    ItemModel(image: 'assets/images/family_members/family_older_sister.png',
      japaneseName: 'Ane',
      englishName: 'Older Sister',
      sound: 'sounds/family_members/older sister.wav',
    ),
    ItemModel(image: 'assets/images/family_members/family_younger_brother.png',
      japaneseName: 'Otouto',
      englishName: 'Younger Brother',
      sound: 'sounds/family_members/younger brohter.wav',
    ),
    ItemModel(image: 'assets/images/family_members/family_younger_sister.png',
      japaneseName: 'Imouto',
      englishName: 'Younger Sister',
      sound: 'sounds/family_members/younger sister.wav',
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
          'Family Members',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        backgroundColor: HexColor('#6B4226'),
      ),
      body: ListView.separated(
        itemCount: familyMembers.length,
        itemBuilder: (BuildContext context, int index) => Item(
          itemModel: familyMembers[index],
          color: HexColor('#458B00'),
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
