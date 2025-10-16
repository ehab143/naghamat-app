import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MusicWidget());
}

void playMusic(int musicNumber) {
      final player = AudioPlayer();
      player.play(AssetSource('music-$musicNumber.mp3'));
    }

    
    Expanded myButton(int musicNumber,Color buttonColor,String buttonText){
      return Expanded(
        
              child: Padding(
                padding: const EdgeInsets.only(bottom: 1.0),
                child: ElevatedButton(
                  style:ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  onPressed: () {
                    playMusic(musicNumber);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left:20.0),
                    child: Row(
                      children: [
                        Icon(Icons.music_note,
                        color: buttonColor,
                        ),
                        SizedBox(width: 20.0,),
                        Text(
                          buttonText,
                          style: TextStyle(
                            color: buttonColor,
                           fontSize: 20.0,
                           ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
    }
    
class MusicWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple[300],
        appBar: AppBar(title: Text('نغمات'), backgroundColor: Colors.purple),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:
          [ 
            myButton( 1, Colors.black, 'Samsung Galaxy'),
            myButton( 2, Colors.red, 'Iphone 11'),
            myButton( 3, Colors.purple, 'Nokia'),
            myButton( 4, Colors.orange, 'Samsung Note'),
            myButton( 5, Colors.yellow, 'WhatsApp'),
            myButton( 6, Colors.black,'Samsung 57'),
            myButton( 7, Colors.blue, 'Iphone 6'),
          
          ],
        ),
      ),
    );
  }
}
