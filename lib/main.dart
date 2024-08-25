import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_hub/providers/counter_provider.dart';
import 'package:provider_hub/providers/slider_provider.dart';
import 'package:provider_hub/screens/counter_screen.dart';
import 'package:provider_hub/screens/slider_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
      ],
      child: const MaterialApp(
        home: SliderScreen(),
      ),
    );
  }
}
