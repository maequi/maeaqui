import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:maeaqui/screens/welcome_screen.dart';
import 'package:maeaqui/theme/theme_manager.dart';
import 'package:maeaqui/theme/app_themes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MaeAquiApp());
}

class MaeAquiApp extends StatelessWidget {
  const MaeAquiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: themeManager,
      builder: (context, isBlue, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'MãeAqui',
          theme: isBlue ? temaAzul : temaRosa,
          home: const WelcomeScreen(),
        );
      },
    );
  }
}