import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:xylo/text.dart';
import 'package:xylo/tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.info}) : super(key: key);

  final String info;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AudioPlayer audioPlayer = AudioPlayer();
  AudioCache audioCache = AudioCache();

  playMusic(path) async {
    await audioCache.play(path);
  }

  pasueMusic() async {
    await audioPlayer.pause();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade100,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * .07),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Letter(letter: 'X', color: Colors.red),
                Letter(letter: 'Y', color: Colors.orange),
                Letter(letter: 'L', color: Colors.blueGrey),
                Letter(letter: 'O', color: Colors.green),
                Letter(letter: 'P', color: Colors.blue),
                Letter(letter: 'H', color: Colors.indigo),
                Letter(letter: 'O', color: Colors.black45),
                Letter(letter: 'N', color: Colors.purple),
                Letter(letter: 'E', color: Colors.pink),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .01),
            const Tile(audio: 'note1.wav', sides: 10, color: Colors.purple),
            const Tile(audio: 'note2.wav', sides: 20, color: Colors.indigo),
            const Tile(audio: 'note3.wav', sides: 30, color: Colors.blue),
            const Tile(audio: 'note4.wav', sides: 40, color: Colors.green),
            const Tile(audio: 'note5.wav', sides: 50, color: Colors.yellow),
            const Tile(audio: 'note6.wav', sides: 60, color: Colors.orange),
            const Tile(audio: 'note7.wav', sides: 70, color: Colors.red),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Made by Yash',
                    style: TextStyle(color: Colors.black),
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
