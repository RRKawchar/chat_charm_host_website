import 'package:chat_charm_website/src/core/extensions/build_context_extensions.dart';
import 'package:flutter/material.dart';

class KDivider extends StatelessWidget {
  const KDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 5,
          width: context.screenWidth/3,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white
          ),
        ),
      ],
    );
  }
}
