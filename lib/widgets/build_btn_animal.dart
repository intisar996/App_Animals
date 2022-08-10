import 'package:animals/constant/name_animals.dart';
import 'package:animals/constant/path_audio.dart';
import 'package:animals/constant/path_icons.dart';
import 'package:animals/constant/path_images.dart';
import 'package:animals/widgets/btn_animal.dart';
import 'package:flutter/material.dart';

class BuildBtnAnimal extends StatelessWidget {
  const BuildBtnAnimal({
    Key? key,
    required this.callBack,
  }) : super(key: key);
  final void Function(String, String) callBack;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(16))),
        child: Column(
          children: [
            // * Row One
            Row(
              children: [
                BtnAnimal(
                  name: NameAnimals.lion,
                  icon: (PathIcons.lion),
                  onClick: () => callBack(PathImages.lion, PathAudio.lion),
                ),
                BtnAnimal(
                  name: NameAnimals.cheetah,
                  color: Colors.orange,
                  icon: PathIcons.cheetah,
                  onClick: () =>
                      callBack(PathImages.cheetah, PathAudio.cheetah),
                ),
                BtnAnimal(
                  name: NameAnimals.wolf,
                  icon: PathIcons.wolf,
                  onClick: () => callBack(PathImages.wolf, PathAudio.wolf),
                ),
              ],
            ),

            // * Row Tow
            Row(
              children: [
                BtnAnimal(
                  name: NameAnimals.dog,
                  icon: (PathIcons.dog),
                  color: Colors.orange,
                  onClick: () => callBack(PathImages.dog, PathAudio.dog),
                ),
                BtnAnimal(
                  name: NameAnimals.crocodile,
                  icon: PathIcons.crocodile,
                  onClick: () =>
                      callBack(PathImages.crocodile, PathAudio.crocodile),
                ),
                BtnAnimal(
                  name: NameAnimals.elephant,
                  icon: PathIcons.elephant,
                  color: Colors.orange,
                  onClick: () =>
                      callBack(PathImages.elephant, PathAudio.elephant),
                ),
              ],
            ),
            // * Row Three
            Row(
              children: [
                BtnAnimal(
                  name: NameAnimals.giraffe,
                  icon: (PathIcons.giraffe),
                  onClick: () =>
                      callBack(PathImages.giraffe, PathAudio.giraffe),
                ),
                BtnAnimal(
                  name: NameAnimals.parrot,
                  icon: PathIcons.parrot,
                  color: Colors.orange,
                  onClick: () => callBack(PathImages.parrot, PathAudio.parrot),
                ),
                BtnAnimal(
                  name: NameAnimals.cat,
                  icon: PathIcons.cat,
                  color: Colors.orange,
                  onClick: () => callBack(PathImages.cat, PathAudio.cat),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
