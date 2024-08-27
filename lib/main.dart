import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_hub/providers/counter_provider.dart';
import 'package:provider_hub/providers/favourite_provider.dart';
import 'package:provider_hub/providers/slider_provider.dart';
import 'package:provider_hub/providers/theme_changer_provider.dart';
import 'package:provider_hub/screens/counter_screen.dart';
import 'package:provider_hub/screens/favourite_app/home_screen.dart';
import 'package:provider_hub/screens/slider_screen.dart';
import 'package:provider_hub/screens/theme_changer_screen.dart';

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
            create: (context) => CounterProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => SliderProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => FavouriteProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => ThemeChangerProvider(),
          ),
        ],
        child: Builder(
          builder: (context) => MaterialApp(
            themeMode: Provider.of<ThemeChangerProvider>(context).mode,
            theme: ThemeData(),
            darkTheme: ThemeData.dark(),
            debugShowCheckedModeBanner: false,
            home: const ThemeChangerScreen(),
          ),
        ));
  }
}
