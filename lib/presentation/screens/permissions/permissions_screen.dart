import 'package:app_setup_riverpod/presentation/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PermissionsScreen extends StatelessWidget {
  const PermissionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Permissions Screen'),
      ),
      body: const _PermissionsView(),
    );
  }
}

class _PermissionsView extends ConsumerWidget {
  const _PermissionsView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final permissions = ref.watch(permissionsProvider);
    return ListView(
      children: [
        CheckboxListTile(
          title: const Text('Camara'),
          subtitle: Text('${permissions.camera}'),
          value: permissions.cameraGranted,
          onChanged: (_) {
            ref.read(permissionsProvider.notifier).requestCameraAccess();
          },
        ),
        CheckboxListTile(
          title: const Text('Galery'),
          subtitle: Text('${permissions.photoLibrary}'),
          value: permissions.photoLibraryGranted,
          onChanged: (_) {
            ref.read(permissionsProvider.notifier).requestPhotosAccess();
          },
        ),
        CheckboxListTile(
          title: const Text('Location'),
          subtitle: Text('${permissions.location}'),
          value: permissions.locationGranted,
          onChanged: (_) {
            ref.read(permissionsProvider.notifier).requestLocationAccess();
          },
        ),
      ],
    );
  }
}
