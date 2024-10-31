// lib/features/experience/controller/ExperienceController.dart

import 'package:flutter/material.dart';
import '../../../data/experience/dummy/DummyExperience.dart';
import '../../../data/experience/model/Experience.dart';

class ExperienceController extends ChangeNotifier {
  List<Experience> experiences = dummyExperiences;

  // Tambahkan metode lain jika diperlukan
}
