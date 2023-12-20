import 'package:app_setup_riverpod/config/config.dart';
import 'package:app_setup_riverpod/presentation/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  QuickActionsPlugin.registerActions();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  runApp(
    const ProviderScope(
      child: MainApp(),
    ),
  );
}
