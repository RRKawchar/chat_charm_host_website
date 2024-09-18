import 'package:chat_charm_website/src/core/widgets/k_handle_size.dart';
import 'package:flutter/material.dart';

class KResponsiveText extends StatelessWidget {
  final String text;
  final double size600;
  final double size700;
  final double sizeFull;
  final Color color;
  const KResponsiveText(
      {super.key,
      required this.text,
      required this.size600,
      required this.size700,
      required this.sizeFull, required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: kHandleSize(
        context: context,
        for600: size600,
        for700: size700,
        forFullScreen: sizeFull,

      ),

        color: color

      ),
    );
  }
}
