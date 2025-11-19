import 'package:flutter/material.dart';

import 'main/menu.dart';
import 'theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: MainMenuScreen(),
    );
  }
}
