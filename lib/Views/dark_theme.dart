import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider_controller/darktheme_contoller.dart';

class DarkThemeExample extends StatefulWidget {
  const DarkThemeExample({super.key});

  @override
  State<DarkThemeExample> createState() => _DarkThemeExampleState();
}

class _DarkThemeExampleState extends State<DarkThemeExample> {
  @override
  Widget build(BuildContext context) {
    final themeChanger  =  Provider.of<ThemeController>(context);

    return Scaffold(
      body: Column(
        children: [
          RadioListTile<ThemeMode>(
            title: Text("Light Theme"),
            value: ThemeMode.light,
            groupValue: themeChanger.theme,
            onChanged: themeChanger.themeSet,
          ),
          RadioListTile<ThemeMode>(
            title: Text("Dark Theme"),
            value: ThemeMode.dark,
            groupValue: themeChanger.theme,
            onChanged: themeChanger.themeSet,
          ),
          RadioListTile<ThemeMode>(
            title: Text("System Theme"),
            value: ThemeMode.system,
            groupValue: themeChanger.theme,
            onChanged: themeChanger.themeSet,
          ),
        ],
      ),
    );
  }
}
