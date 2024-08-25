import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_hub/providers/slider_provider.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<SliderProvider>(
              builder: (context, ob, child) => Slider(
                  value: ob.sdValue,
                  onChanged: (value) {
                    ob.setValue(value);
                  }),
            ),
            Consumer<SliderProvider>(
                builder: (context, ob, child) => Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              color: Colors.red.withOpacity(ob.sdValue)),
                          child: const Text('Red Container'),
                        ),
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              color: Colors.green.withOpacity(ob.sdValue)),
                          child: const Text('Green Container'),
                        )
                      ],
                    )),
          ],
        ),
      ),
    );
  }
}
