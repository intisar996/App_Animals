import 'package:animals/constant/fonts.dart';
import 'package:animals/constant/path_images.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarHome extends StatelessWidget implements PreferredSizeWidget {
  const AppBarHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      title: Text(
        'Animal',
        style: GoogleFonts.pacifico(),
      ),
      centerTitle: true,
      leading: const Icon(
        Icons.menu,
        size: 30,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image(image: AssetImage(PathImages.pawprint)),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
