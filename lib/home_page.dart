import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/main.dart';

class HomePage extends ConsumerWidget {
  final String title;
  const HomePage({
    super.key,
    required this.title,
  });

  @override
  // (ref): Allows us to talk with providers from widgets
  Widget build(BuildContext context, WidgetRef ref) {
    final name = ref.watch(nameProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          name ?? '',
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Text(name ?? ''),
          ),
        ],
      ),
    );
  }
}
