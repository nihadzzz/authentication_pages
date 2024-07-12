import 'package:flutter/material.dart';
import 'package:introduction/pages/auth/register/register_page.dart';
import 'package:introduction/pages/intro/intro_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    this.started,
  });
  final bool? started;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: started == true ? const RegisterPage() : const IntroPage(),
    );
  }
}
