import 'package:astro_learn_space_app/provider/solar_provider.dart';
import 'package:astro_learn_space_app/screen/splash_screen/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const AstroLearnApp());
}

class AstroLearnApp extends StatelessWidget {
  const AstroLearnApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SolorProvider(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
