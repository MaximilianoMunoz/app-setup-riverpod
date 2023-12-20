import 'package:share_plus/share_plus.dart';

class SharePlugin {
  static void shareLink({
    required String link,
    required String subject,
  }) {
    Share.share(
      link,
      subject: subject,
    );
  }
}
