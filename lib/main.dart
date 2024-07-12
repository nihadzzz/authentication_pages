import 'package:flutter/material.dart';
import 'package:introduction/app.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  bool? started = sharedPreferences.getBool('intro');
  runApp( MyApp(started: started));
}
