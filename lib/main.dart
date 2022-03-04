import 'package:flutter/material.dart';
import 'package:flutter_mixup_all/pages/login_page.dart';
import 'package:flutter_mixup_all/utils/routes.dart';
import 'pages/home_page.dart';
// import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: const HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.green,
        // fontFamily: GoogleFonts.lato().fontFamily // You can use google fonts from here also
        // primaryTextTheme: GoogleFonts.latoTextTheme()
      ),

      darkTheme: ThemeData(brightness: Brightness.dark),

      initialRoute: MyRoutes
          .homeRoute, // It is use for open the starting screen for your app whenever you want to start from
      routes: {
        "/": (context) => const LoginPage(),
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.loginRoute: (context) => const LoginPage()
      },
    );
  }
}
