import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: Center(
          child: Text("Awesome! Project Structure  is set up and running. \nHappy Coding", textAlign: TextAlign.center,),
        ),
      ),
    );
  }
}
