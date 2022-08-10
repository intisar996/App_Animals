import 'package:animals/constant/path_images.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../widgets/appbar_home.dart';
import '../widgets/build_btn_animal.dart';
import '../widgets/image_animal.dart';

class PageHome extends StatefulWidget {
  const PageHome({Key? key}) : super(key: key);

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  // * default image animals
  String image = PathImages.animals;
  // * obj from AudioPlayer
  AudioPlayer audioPlayer = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          // * AppBar
          appBar: const AppBarHome(),
          // * Image And Button
          body: Container(
            margin: const EdgeInsets.all(8),
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 4),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                // *image animal
                ImageAnimal(
                  image: image,
                ),
                // * Line
                const Divider(
                  color: Colors.black,
                  thickness: 4,
                  height: 0,
                ),
                // * Button Animal
                BuildBtnAnimal(
                  callBack: reBuildUi,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void reBuildUi(String image, String audio) {
    // * change image
    this.image = image;
    // * change Audio
    audioPlayer.setSourceAsset(audio);
    audioPlayer.resume();

    setState(() {});
  }
}
