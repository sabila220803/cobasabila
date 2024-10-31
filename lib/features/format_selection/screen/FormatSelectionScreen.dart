// lib/features/format_selection/screen/FormatSelectionScreen.dart

import 'package:flutter/material.dart';
import '../widgets/FormatOptionWidget.dart';
import '../../../core/constants/color_constants.dart';
import '../../../core/global_component/LineBarComponent.dart';

class FormatSelectionScreen extends StatefulWidget {
  const FormatSelectionScreen({Key? key}) : super(key: key);

  @override
  _FormatSelectionScreenState createState() => _FormatSelectionScreenState();
}

class _FormatSelectionScreenState extends State<FormatSelectionScreen> {
  String? selectedFormat; // Menyimpan format yang dipilih

  final List<String> formats = [
    'Audio meditation',
    'Article',
    'Instrumental music',
    'Neuro-sounds',
    'All',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Mengubah background menjadi hitam
      appBar: AppBar(
        title: const Text('Select Format'),
        backgroundColor: ColorConstants.buttonColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, // Memulai dari atas
          crossAxisAlignment:
              CrossAxisAlignment.start, // Mengatur untuk rata kiri
          children: [
            // Garis putus-putus di bagian paling atas
            const LineBarComponent(
              segments: 3,
              height: 2,
              spacing: 8,
            ),
            const SizedBox(height: 20), // Jarak sebelum judul

            // Judul di bagian atas
            const Text(
              'What format \ndo you prefer?',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors
                    .white, // Ubah warna teks menjadi putih agar terlihat kontras
              ),
              textAlign: TextAlign.left, // Rata kiri
            ),
            const SizedBox(height: 16), // Spasi sebelum opsi

            // Pilihan format dibungkus dengan Expanded agar bisa bergerak ke tengah
            Expanded(
              child: Column(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Memindahkan pilihan format ke tengah
                children: formats
                    .map(
                      (format) => FormatOptionWidget(
                        format: format,
                        isSelected: selectedFormat == format,
                        onTap: () {
                          setState(() {
                            selectedFormat = format; // Set format yang dipilih
                          });
                        },
                      ),
                    )
                    .toList(),
              ),
            ),

            const SizedBox(height: 16), // Mengurangi spasi setelah pilihan format

            // Tombol continue yang disesuaikan
            SizedBox(
              width: double.infinity, // Membuat tombol penuh
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Colors
                      .white, // Mengubah warna latar belakang tombol menjadi putih
                  shape:
                      const StadiumBorder(), // Mengubah bentuk tombol menjadi lonjong
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0), // Padding tambahan untuk tombol
                ),
                onPressed: () {
                  if (selectedFormat != null) {
                    Navigator.pushNamed(context, '/experience');
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Please select a format')),
                    );
                  }
                },
                child: const Text(
                  "Continue",
                  style: TextStyle(
                    fontWeight: FontWeight.bold, // Mengubah teks menjadi bold
                    fontSize: 20, // Ukuran font lebih besar
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
