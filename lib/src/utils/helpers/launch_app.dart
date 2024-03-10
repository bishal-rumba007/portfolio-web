import 'package:flutter/foundation.dart';
import 'package:portfolio_web_app/src/utils/constants/export.dart';
import 'package:url_launcher/url_launcher.dart';

/// Launches the app with the given [url].

Future<void> launchEmailUrl() async {
  final Uri emailLaunchUri = Uri(
    scheme: 'mailto',
    path: AppString.email,
    queryParameters: {
      'subject': 'Portfolio Web App - Contact Me!',
      'body': 'Hello, I would like to get in touch with you.',
    },
  );
  await launchUrl(emailLaunchUri);
}

Future<void> launchWhatsAppUrl() async {
  if (kIsWeb) {
    String webUrl =
        'https://api.whatsapp.com/send/?phone=${AppString.whatsApp}&text=Hello, I would like to get in touch with you.';
    final Uri whatsappLaunchUri = Uri.parse(webUrl);
    await launchUrl(whatsappLaunchUri);
  } else {
    final Uri whatsappLaunchUri = Uri(
      scheme: 'whatsapp',
      path: AppString.whatsApp,
      queryParameters: {
        'text': 'Hello, I would like to get in touch with you.',
      },
    );
    await launchUrl(whatsappLaunchUri);
  }
}
