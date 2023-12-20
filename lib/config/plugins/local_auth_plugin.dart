import 'package:flutter/services.dart';
import 'package:local_auth/error_codes.dart' as auth_error;
import 'package:local_auth/local_auth.dart';

class LocalAuthPlugin {
  static final LocalAuthentication auth = LocalAuthentication();

  static Future<bool> canCheckBiometrics() async => auth.canCheckBiometrics;

  static Future<(bool, String)> authenticate({
    bool biometricOnly = false,
  }) async {
    try {
      final didAuthenticate = await auth.authenticate(
        localizedReason: 'Please authenticate to show xxx',
        options: AuthenticationOptions(
          biometricOnly: biometricOnly,
        ),
      );
      return (
        didAuthenticate,
        didAuthenticate ? 'Hecho' : 'Cncelado por usuario'
      );
    } on PlatformException catch (e) {
      if (e.code == auth_error.notEnrolled) {
        return (false, 'no hay bio enrolados');
      }
      if (e.code == auth_error.lockedOut) {
        return (false, 'muchos intentos fallidos');
      }
      if (e.code == auth_error.notAvailable) {
        return (false, 'no hay bio disponibles');
      }
      if (e.code == auth_error.passcodeNotSet) {
        return (false, 'no hay un Pin configurado');
      }
      if (e.code == auth_error.permanentlyLockedOut) {
        return (false, 'bloqueado permanentemente');
      }
      return (false, e.toString());
    }
  }

  static Future<void> availableBiometrics() async {
    final availableBiometrics = await auth.getAvailableBiometrics();

    if (availableBiometrics.isNotEmpty) {
      // Some biometrics are enrolled.
    }

    if (availableBiometrics.contains(BiometricType.strong) ||
        availableBiometrics.contains(BiometricType.face)) {
      // Specific types of biometrics are available.
      // Use checks like this with caution!
    }
  }
}
