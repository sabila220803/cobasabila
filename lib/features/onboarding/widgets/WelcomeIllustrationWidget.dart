import 'package:flutter/material.dart';
import '../../../core/constants/image_constants.dart';

class WelcomeIllustrationWidget extends StatelessWidget {
  const WelcomeIllustrationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft, // Menempel ke kiri layar
      child: Column(
        children: [
          const SizedBox(height: 20), // Mengatur jarak dari atas
          Image.asset(
            ImageConstants.heartIllustration, // Menggunakan constant untuk path gambar
            height: MediaQuery.of(context).size.height * 0.4, // 40% dari tinggi layar
            width: MediaQuery.of(context).size.width, // Menyambung lebar layar
            fit: BoxFit.cover, // Menutupi area tampilan
          ),
        ],
      ),
    );
  }
}
