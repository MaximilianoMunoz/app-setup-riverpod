import 'package:app_setup_riverpod/presentation/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BiometricScreen extends ConsumerWidget {
  const BiometricScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final canCheckBiometrics = ref.watch(canCheckBiometricsProvider);
    final localAuthState = ref.watch(localAuthProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Biometric screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                ref.read(localAuthProvider.notifier).authenticateUser();
              },
              child: const Text('Autenticar'),
            ),
            const SizedBox(
              height: 40,
            ),
            canCheckBiometrics.when(
              data: (canCheck) => Text('Puedo regresar biometricos $canCheck'),
              error: (error, stackTrace) => Text(error.toString()),
              loading: () => const CircularProgressIndicator(),
            ),
            const Text(
              'Estado del biometrico',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              'Estado $localAuthState',
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
