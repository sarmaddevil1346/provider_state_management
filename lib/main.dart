import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/provider_controller/counter_provider_controller.dart';
import 'package:provider_state_management/provider_controller/darktheme_contoller.dart';
import 'package:provider_state_management/provider_controller/opacity_controller.dart';

import 'Views/counter_example.dart';
import 'Views/dark_theme.dart';
import 'Views/opacity.dart';
import 'Views/stateless_as_stateful.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => CounterExampleProvider(),
          ),
          ChangeNotifierProvider(
            create: (_) => OpacityExampleCounter(),
          ),
          ChangeNotifierProvider(
            create: (_) => ThemeController(),
          ),
        ],
        child: Builder(
          builder: (context) {
            final themeChanger = Provider.of<ThemeController>(context);
            return MaterialApp(
              themeMode: themeChanger.theme,
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: false,
              ),
              darkTheme: ThemeData(
                brightness: Brightness.dark,
              ),
              home: const StatelessAsStateFull(),
            );
          },
        ));
  }
}
