import 'package:akbar_al_youm_app/mobile_app/core/services/servecies_locator.dart';
import 'package:akbar_al_youm_app/mobile_app/core/style/themes/light_theme.dart';
import 'package:akbar_al_youm_app/mobile_app/presentation/screens/home_screen.dart';
import 'package:akbar_al_youm_app/network/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'mobile_app/presentation/screens/login/login_screen.dart';
import 'mobile_app/presentation/screens/reigester/register_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  ServiceLocator().init() ;
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );


  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  void initState() {
    FirebaseAuth.instance
        .authStateChanges()
        .listen((User? user) {
      if (user == null) {
        print('=================User is currently signed out!');
      } else {
        print('==================User is signed in!');
      }
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme(),
      home: (FirebaseAuth.instance.currentUser != null &&
    FirebaseAuth.instance.currentUser!.emailVerified ) ? HomeScreenState() : LoginScreen(),
    routes: {
    'Signup' : (context) => RegisterScreen(),
    'Login' : (context) => LoginScreen(),
    'HomePage' : (context) => HomeScreenState(),

    },
    );
  }
}


