import 'package:app_setup_riverpod/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    title: const Text('Miscelaneos'),
                    actions: [
                      IconButton(
                        onPressed: () {
                          context.push('/permissions');
                        },
                        icon: const Icon(
                          Icons.settings,
                        ),
                      ),
                    ],
                  ),
                  const MainMenu(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
