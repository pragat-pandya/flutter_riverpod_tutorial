import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/main.dart';

// In ConsumerWidget the build function will get called each time theres change in provider
// In Consumer only the child widgets rebuilds and not the whole Scaffold

class HomePage extends StatelessWidget {
  final String title;
  const HomePage({
    super.key,
    required this.title,
  });

  @override
  // (ref): Allows us to talk with providers from widgets
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          'Riverpod Tutorial',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Consumer(
        builder: (context, ref, child) {
          // Subscribes to the changes made to nameProvider
          // Recommended to use inside the build function
          final name = ref.watch(nameProvider);

          // Only Reads once and don't subscribe to nameProvider
          // NOT Recommended to use inside the build function
          final nameRead = ref.read(nameProvider);

          return Column(
            children: [
              Center(
                child: Text(name ?? ''),
              ),
            ],
          );
        },
      ),
    );
  }
}
