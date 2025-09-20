import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:language_learning_app/models/number.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.number, required this.color});
  final Number number;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final player = AudioPlayer();
    return Container(
      height: 100,
      color: color,

      child: Row(
        children: [
          Container(color: Color(0xffd8c4b2), child: Image.asset(number.image)),

          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jpName,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),

                Text(
                  number.enName,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ),
          Spacer(flex: 1),
          Padding(
            padding: const EdgeInsets.only(right: 16),

            child: IconButton(
              onPressed: () {
                player.play(AssetSource(number.sound));
              },

              icon: Icon(Icons.play_arrow, color: Colors.white, size: 30),
            ),
          ),
        ],
      ),
    );
  }
}
