import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_hub/providers/theme_changer_provider.dart';

class ThemeChangerScreen extends StatefulWidget {
  const ThemeChangerScreen({super.key});

  @override
  State<ThemeChangerScreen> createState() => _ThemeChangerScreenState();
}

class _ThemeChangerScreenState extends State<ThemeChangerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Change Theme"),
      ),
      body: Column(
        children: [
          Consumer<ThemeChangerProvider>(builder: (context, ob, child) {
            return SwitchListTile(
                title: const Text('Dark Theme'),
                value: ob.isDarkMode,
                onChanged: (value) {
                  ob.setTheme(value);
                });
          }),
        ],
      ),
    );
  }
}
