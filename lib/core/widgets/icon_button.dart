import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconButtonLink extends StatelessWidget {
  final IconData? icon;
  final String url;
  const IconButtonLink({super.key, required this.icon, required this.url});

  void openUrl() => js.context.callMethod('open', [url, '_blank']);

  @override
  Widget build(BuildContext context) =>
      IconButton(onPressed: openUrl, icon: FaIcon(icon));
}
