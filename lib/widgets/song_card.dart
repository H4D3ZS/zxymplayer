import 'package:flutter/material.dart';
import 'package:zxymplayer/models/song_model.dart';

class SongCard extends StatelessWidget {
  const SongCard({
    Key? key,
    required this.song,
  }) : super(key: key);

  final Song song;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      child: Stack(alignment: Alignment.bottomCenter, children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            image: DecorationImage(
                image: AssetImage(song.coverUrl), fit: BoxFit.cover),
          ),
        ),
        // Spacer

        Container(
          height: 50,
          width: MediaQuery.of(context).size.width * 0.37,
          margin: const EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Colors.white.withOpacity(0.8),
            image: DecorationImage(
                image: AssetImage(song.coverUrl), fit: BoxFit.cover),
          ),
        ),

        Container(
          height: 50,
          width: MediaQuery.of(context).size.width * 0.37,
          margin: const EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Colors.white.withOpacity(0.8),
            image: DecorationImage(
                image: AssetImage(song.coverUrl), fit: BoxFit.cover),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    song.title,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Colors.deepPurple, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Icon(Icons.play_circle)
            ],
          ),
        ),
      ]),
    );
  }
}
