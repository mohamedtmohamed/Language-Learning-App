import 'package:flutter/material.dart';
import 'package:language_learning_app/components/category_item.dart';
import 'package:language_learning_app/screens/color_page.dart';
import 'package:language_learning_app/screens/family_memebers.dart';
import 'package:language_learning_app/screens/numbers_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6b4226),
        title: Text('Toku', style: TextStyle(color: Colors.white)),
      ),

      body: Column(
        children: [
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (Context) {
                    return NumbersPage();
                  },
                ),
              );
            },
            text: 'Numbers',
            color: Color(0xffff8308),
          ),

          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (Context) {
                    return FamilyMemebersPage();
                  },
                ),
              );
            },

            text: 'Family Mumbers',
            color: Color(0xff458b00),
          ),

          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (Context) {
                    return ColorPage();
                  },
                ),
              );
            },

            text: 'Colors',
            color: Color(0xff79419a),
          ),
        ],
      ),
    );
  }
}
