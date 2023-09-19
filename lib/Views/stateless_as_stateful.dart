import 'package:flutter/material.dart';

class StatelessAsStateFull extends StatelessWidget {
  const StatelessAsStateFull({super.key});

  @override
  Widget build(BuildContext context) {
    print("rebuild");
    ValueNotifier<int> _counter = ValueNotifier<int>(1);
    ValueNotifier<bool> _toggle = ValueNotifier<bool>(false);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ValueListenableBuilder(
              valueListenable: _toggle,
              builder: (context, value, child) {
                return TextFormField(
                  obscureText: _toggle.value,
                  decoration: InputDecoration(
                    hintText: "Enter your password",
                    filled: true,
                    suffixIcon: InkWell(
                        onTap: () {
                          _toggle.value = !_toggle.value;
                        },
                        child: _toggle.value
                            ? const Icon(Icons.visibility_off)
                            : const Icon(Icons.visibility)),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            ValueListenableBuilder(
              valueListenable: _counter,
              builder: (context, value, child) {
                return Center(
                    child: Text(
                  _counter.value.toString(),
                  style: const TextStyle(fontSize: 25),
                ));
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _counter.value++;
          print(_counter);
        },
      ),
    );
  }
}
