import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:seyahatuygulamasi/screens/welcome_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
}
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home:WelcomeScreen(),
      );

  }
}
