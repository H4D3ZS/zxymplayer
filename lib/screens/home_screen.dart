// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:zxymplayer/models/song_model.dart';
import 'package:zxymplayer/widgets/section_header.dart';
import 'package:zxymplayer/widgets/song_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Song> songs = Song.songs;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.deepPurple.shade800.withOpacity(0.8),
              Colors.deepPurple.shade200.withOpacity(0.8)
            ]),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: const _CustomAppBar(),
        bottomNavigationBar: _CustomNavBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const _DiscoverMusic(),
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, top: 20.0, bottom: 20.0),
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: SectionHeader(
                        title: 'Trending Music',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.27,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: songs.length,
                          itemBuilder: ((context, index) {
                            return SongCard(song: songs[index]);
                          })),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  BottomNavigationBar _CustomNavBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.deepPurple.shade800,
      unselectedItemColor: Colors.white,
      selectedItemColor: Colors.white,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border_outlined),
          label: 'Favorites',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.play_circle_fill_outlined),
          label: 'Play',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people_outline),
          label: 'Profile',
        ),
      ],
    );
  }
}

class _DiscoverMusic extends StatelessWidget {
  const _DiscoverMusic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Welcome', style: Theme.of(context).textTheme.bodyLarge!),
          const SizedBox(
            height: 5,
          ),
          Text(
            'Enjoy your favorite music',
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: InputDecoration(
              isDense: true,
              filled: true,
              fillColor: Colors.white,
              hintText: 'Search',
              hintStyle: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colors.grey.shade400),
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey.shade400,
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: BorderSide.none),
            ),
          )
        ],
      ),
    );
  }
}

class _CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const _CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: const Icon(Icons.grid_view_rounded),
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 20),
          child: const CircleAvatar(
            backgroundImage: AssetImage("assets/images/logo.jpeg"),
          ),
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(56.0);
}
