//run with : flutter run --no-sound-null-safety
import "package:flutter/material.dart";
import 'package:audioplayers/audio_cache.dart';
import 'NumberAudio.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AudioCache audioPlayer = AudioCache();

  List<NumberAudio> numberList = [
    NumberAudio(Colors.amber, "one.wav", "One"),
    NumberAudio(Colors.blue, "two.wav", "Two"),
    NumberAudio(Colors.brown, "three.wav", "Three"),
    NumberAudio(Colors.cyan, "four.wav", "Four"),
    NumberAudio(Colors.deepOrange, "five.wav", "Five"),
    NumberAudio(Colors.green, "six.wav", "Six"),
    NumberAudio(Colors.grey, "seven.wav", "Seven"),
    NumberAudio(Colors.lightBlue, "eight.wav", "Eight"),
    NumberAudio(Colors.deepPurple, "nine.wav", "Nine"),
    NumberAudio(Colors.pink, "ten.wav", "Ten"),
  ];

  play(String uri) {
    audioPlayer.play(uri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spanish Numbers'),
      ),
      body: Container(
          child: Center(
        child: Column(
          children: <Widget>[
            Image(image: AssetImage("images/logo.png")),
            Expanded(
                child: GridView.builder(
              padding: EdgeInsets.all(10.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.5,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0),
              itemCount: numberList.length,
              itemBuilder: (context, i) => SizedBox(
                width: 100.0,
                height: 50.0,
                child: MaterialButton(
                  color: numberList[i].buttonColor,
                  child: Text(
                    numberList[i].buttonName,
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                  onPressed: () {
                    play(numberList[i].audioUri);
                  },
                ),
              ),
            ))
          ],
        ),
      )),
    );
  }
}
