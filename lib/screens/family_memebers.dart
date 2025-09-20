import 'package:flutter/material.dart';
import 'package:language_learning_app/components/item.dart';
import 'package:language_learning_app/models/number.dart';

class FamilyMemebersPage extends StatelessWidget {
  const FamilyMemebersPage({super.key});

  final List<Number> numbers = const [
    Number(
      sound: 'sounds/family_members/father.wav',
      image: 'assets/images/family_members/family_father.png',
      jpName: 'Chichi',
      enName: 'Father',
    ),

    Number(
      sound: 'sounds/family_members/mother.wav',
      image: 'assets/images/family_members/family_mother.png',
      jpName: 'Haha',
      enName: 'Mother',
    ),

    Number(
      sound: 'sounds/family_members/daughter.wav',
      image: 'assets/images/family_members/family_daughter.png',
      jpName: 'Musume',
      enName: 'Daughter',
    ),

    Number(
      sound: 'sounds/family_members/son.wav',
      image: 'assets/images/family_members/family_daughter.png',
      jpName: 'Musuko',
      enName: 'Son',
    ),

    Number(
      sound: 'sounds/family_members/grand father.wav',
      image: 'assets/images/family_members/family_grandfather.png',
      jpName: 'Ojiisan',
      enName: 'Grandfather',
    ),

    Number(
      sound: 'sounds/family_members/grand mother.wav',
      image: 'assets/images/family_members/family_grandmother.png',
      jpName: 'Obaasan',
      enName: 'Grandmother',
    ),

    Number(
      sound: 'sounds/family_members/older bother.wav',
      image: 'assets/images/family_members/family_older_brother.png',
      jpName: 'Oniisan',
      enName: 'Older Brother',
    ),
    Number(
      sound: 'sounds/family_members/older sister.wav',
      image: 'assets/images/family_members/family_older_sister.png',
      jpName: 'Oneesan',
      enName: 'Older Sister',
    ),

    Number(
      sound: 'sounds/family_members/younger brohter.wav',
      image: 'assets/images/family_members/family_younger_brother.png',
      jpName: 'Otōto',
      enName: '	Younger Brother',
    ),

    Number(
      sound: 'sounds/family_members/younger sister.wav',
      image: 'assets/images/family_members/family_younger_sister.png',
      jpName: 'Imōto',
      enName: 'Younger Sister',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6b4226),
        title: Text('Family Members', style: TextStyle(color: Colors.white)),
      ),

      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Item(number: numbers[index], color: Color(0xff458b00));
        },
      ),
    );
  }
}
