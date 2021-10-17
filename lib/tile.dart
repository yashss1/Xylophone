import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Tile extends StatefulWidget {
  const Tile(
      {Key? key, required this.audio, required this.sides, required this.color})
      : super(key: key);

  final String audio;
  final double sides;
  final Color color;

  @override
  _TileState createState() => _TileState();
}

class _TileState extends State<Tile> {
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
    return Container(
      margin: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * .009,
          horizontal: widget.sides),
      child: InkWell(
        onTap: () {
          playMusic(widget.audio);
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.1,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(-10, 10),
                blurRadius: 10,
              ),
            ],
            borderRadius: BorderRadius.circular(40),
            color: widget.color,
          ),
        ),
      ),
    );
  }
}
