import 'package:audioplayers/audioplayers.dart';

class ItemModel
{
  final String? image;
  final String japaneseName;
  final String englishName;
  final String sound;

  const ItemModel({
    this.image,
    required this.japaneseName,
    required this.englishName,
    required this.sound,
  });

void playSound()
{
  final player = AudioPlayer();
  player.play(AssetSource(sound));
}
}

