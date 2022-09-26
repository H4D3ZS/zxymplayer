class Song {
  final String title;
  // final String description;
  final String url;
  final String coverUrl;
  final String bandName;

  Song(
      {required this.title,
      // required this.description,
      required this.url,
      required this.coverUrl,
      required this.bandName});

  static List<Song> songs = [
    Song(
        title: 'Pyschosocial',
        // description: ' Pyschosocial',
        url: 'assets/music/psyk.mp3',
        coverUrl: 'assets/images/coverUrl/slipknot.png',
        bandName: 'Slipknot'),
    Song(
        title: 'Toxicity',
        // description: 'Toxicity',
        url: 'assets/music/toxicity.mp3',
        coverUrl: 'assets/images/coverUrl/soad.png',
        bandName: 'System of A Down'),
    Song(
        title: 'Nothing Else Matters',
        // description: 'Nothing Else Matter',
        url: 'assets/music/matters.mp3',
        coverUrl: 'assets/images/coverUrl/metallica.png',
        bandName: 'Metallica'),
  ];
}
