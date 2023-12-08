import 'package:akbar_al_youm_app/mobile_app/core/services/servecies_locator.dart';
import 'package:akbar_al_youm_app/mobile_app/core/style/themes/light_theme.dart';
import 'package:akbar_al_youm_app/mobile_app/presentation/screens/home_screen.dart';
import 'package:akbar_al_youm_app/network/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  ServiceLocator().init() ;
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme(),
      home:  HomeScreen(),
    );
  }
}


