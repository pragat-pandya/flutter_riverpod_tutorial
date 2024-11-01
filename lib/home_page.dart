import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/main.dart';

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
          final name = ref.watch(nameProvider);
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
