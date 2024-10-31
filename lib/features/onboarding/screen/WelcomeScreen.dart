// lib/features/onboarding/screen/WelcomeScreen.dart

import 'package:flutter/material.dart';
import '../../../core/constants/color_constants.dart';
import '../widgets/WelcomeIllustrationWidget.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Menggunakan SafeArea untuk menghindari area status bar
    return Scaffold(
      backgroundColor: ColorConstants.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                  height: 80), // Jarak lebih besar untuk menurunkan teks
              const Text(
                "A Happy Life\nBegins With\nPeace Of Mind",
                textAlign: TextAlign.left,
                maxLines: 3, // Membatasi teks menjadi tiga baris
                style: TextStyle(
                  fontSize: 40, // Font diperbesar
                  fontWeight: FontWeight.bold, // Berat font
                  color: ColorConstants.primaryTextColor,
                  height: 1.2, // Mengatur jarak antarbaris agar lebih rapat
                ),
              ),
              const SizedBox(
                  height: 40), // Memberi jarak antara teks dan ilustrasi
              const WelcomeIllustrationWidget(),
              const Spacer(), // Ruang tambahan agar tombol berada di bawah layar
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorConstants.buttonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/nextScreen');
                  },
                  child: const Text(
                    "Continue",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24), // Spasi di bawah tombol
            ],
          ),
        ),
      ),
    );
  }
}
