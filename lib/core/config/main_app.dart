import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../core/utils/route_utils.dart';
import '../../core/constants/color_constants.dart';
import '../../features/experience/controller/ExperienceController.dart'; // Pastikan path benar

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ExperienceController>(
          create: (_) => ExperienceController(),
        ),
      ],
      child: MaterialApp(
        title: 'Peace of Mind App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: ColorConstants.backgroundColor,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.black,
            elevation: 0,
          ),
        ),
        initialRoute: '/',
        onGenerateRoute: RouteUtils.generateRoute,
      ),
    );
  }
}
