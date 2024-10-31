// lib/core/constants/color_constants.dart

import 'package:flutter/material.dart';

class ColorConstants {
  // **Background Colors**
  static const Color backgroundColor = Color(0xFFF5F5F5); // Warna latar belakang utama
  static const Color scaffoldBackgroundColor = Colors.black; // Untuk Scaffold dengan latar belakang hitam

  // **Primary Colors**
  static const Color primaryTextColor = Color(0xFF333333); // Warna teks utama
  static const Color secondaryTextColor = Colors.white; // Warna teks sekunder
  static const Color buttonColor = Color(0xFF000000); // Warna tombol utama (hitam)
  static const Color buttonTextColor = Colors.white; // Warna teks pada tombol

  // **Accent Colors**
  static const Color accentColor = Colors.blue; // Warna aksen, bisa digunakan untuk highlight atau elemen penting
  static const Color searchIconColor = Colors.white; // Warna ikon pencarian di AppBar
  static const Color avatarBackgroundColor = Colors.grey; // Warna latar belakang avatar

  // **Border Colors**
  static const Color borderColor = Color(0xFFCCCCCC); // Warna border umum

  // **Shadow Colors**
  static final Color shadowColor = Colors.white.withOpacity(0.6); // Warna bayangan untuk efek

  // **Error Colors**
  static const Color errorColor = Colors.red; // Warna untuk error atau peringatan

  // **Additional Colors**
  static const Color grey700 = Colors.grey; // Tambahan warna abu-abu jika diperlukan
}
