import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider_controller/opacity_controller.dart';

class OpacityEx extends StatefulWidget {
  const OpacityEx({super.key});

  @override
  State<OpacityEx> createState() => _OpacityExState();
}

class _OpacityExState extends State<OpacityEx> {
  double value = 0;
  @override
  Widget build(BuildContext context) {
    final opacityController =
        Provider.of<OpacityExampleCounter>(context, listen: false);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Consumer<OpacityExampleCounter>(
              builder: (context, value, child) {
                return Slider(
                  value: value.opacity,
                  onChanged: (val) {
                    value.opacityControl(val);
                  },
                );
              },
            ),
            Consumer<OpacityExampleCounter>(
              builder: (context, value, child) {
                return Container(
                  height: 100,
                  color: Colors.red.withOpacity(value.opacity),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
