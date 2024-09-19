import 'package:fluently_learning_app/screens/colors_screen.dart';
import 'package:fluently_learning_app/screens/family_members_screen.dart';
import 'package:fluently_learning_app/screens/numbers_screen.dart';
import 'package:fluently_learning_app/screens/phrases_screen.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../components/category_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Fluently Japanese',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        backgroundColor: HexColor('#6B4226'),
      ),
      backgroundColor: HexColor('#FEF6DB'),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Category(
                      text: 'Numbers',
                      color: HexColor('#EF9235'),
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context){
                              return const NumbersScreen();
                            }),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Expanded(
                    child: Category(
                      text: 'Family Members',
                      color: HexColor('#458B00'),
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context){
                            return const FamilyMembersScreen();
                          }),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Category(
                      text: 'Colors',
                      color: HexColor('#854CAE'),
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context){
                            return const ColorsScreen();
                          }),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Expanded(
                    child: Category(
                      text: 'Phrases',
                      color: HexColor('#53AFD5'),
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context){
                            return const PhrasesScreen();
                          }),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}