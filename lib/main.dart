// ignore_for_file: prefer_const_constructors

import 'package:firebase_core/firebase_core.dart'
    show Firebase, FirebaseOptions;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sun_app/pages/authentication/login_page.dart';
import 'package:sun_app/pages/home/home.dart';
import 'package:sun_app/pages/main/main_page.dart';
import 'services/users/users_services.dart';
// import 'package:flutter_ecom/services/users/users_services.dart';

import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var options = const FirebaseOptions(
    apiKey: "AIzaSyBTBkVSey4D6Ld586Jt3d2cd0IRAey_ZkE",
    projectId: "sunapp-88983",
    messagingSenderId: "424370028967",
    appId: "1:424370028967:web:68aadc8ca86066b673b682",
  );
  if (kIsWeb) {
    await Firebase.initializeApp(options: options);
  } else {
    await Firebase.initializeApp();
  }
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<UsersServices>(
          create: (context) => UsersServices(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          colorSchemeSeed: const Color(0xFF012B05),
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => LoginPage(),
          '/home': (context) => HomePage(),
          '/mainpage': (context) => MainPage(),
        },
        // home: LoginPage(),
      ),
    );
  }
}
