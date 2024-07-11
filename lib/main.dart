import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  Widget playsound(String note, Color colors) {
    return Container(
      color: colors,
      child: TextButton(
        onPressed: () async {
          final player = AudioPlayer();
          await player.play(
            AssetSource(note),
          );
        },
        child: Container(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Xylophone',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 255, 0, 0),
                  Color.fromARGB(255, 255, 127, 0),
                  Color.fromARGB(255, 255, 255, 0),
                  Color.fromARGB(255, 0, 255, 0),
                  Color.fromARGB(255, 0, 0, 255),
                  Color.fromARGB(255, 75, 0, 130),
                  Color.fromARGB(255, 143, 0, 255),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(child: playsound('note1.wav', const Color.fromARGB(255, 255, 0, 0))),
                Expanded(child: playsound('note2.wav', const Color.fromARGB(255, 255, 127, 0))),
                Expanded(child: playsound('note3.wav', const Color.fromARGB(255, 255, 255, 0))),
                Expanded(child: playsound('note4.wav', const Color.fromARGB(255, 0, 255, 0))),
                Expanded(child: playsound('note5.wav', const Color.fromARGB(255, 0, 0, 255))),
                Expanded(child: playsound('note6.wav', const Color.fromARGB(255, 75, 0, 130))),
                Expanded(child: playsound('note7.wav', const Color.fromARGB(255, 143, 0, 255))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
