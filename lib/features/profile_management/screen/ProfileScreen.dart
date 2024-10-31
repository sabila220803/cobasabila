// lib/features/profile_management/screen/ProfileScreen.dart

import 'package:flutter/material.dart';
import '../../../data/profile/dummy/DummyProfile.dart';
import '../../../data/profile/model/Profile.dart';
import '../widgets/AvatarWidget.dart';
import '../../../core/constants/color_constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Asumsikan kita mengambil profil pertama dari dummy data
    final Profile profile = dummyProfiles.first;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: ColorConstants.buttonColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            AvatarWidget(
              imagePath: profile.avatarPath,
              radius: 50,
            ),
            const SizedBox(height: 20),
            Text(
              profile.name,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              profile.email,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white70,
              ),
            ),
            // Tambahkan informasi profil lain jika diperlukan
          ],
        ),
      ),
    );
  }
}
