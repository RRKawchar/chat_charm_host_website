import 'package:chat_charm_website/src/core/extensions/build_context_extensions.dart';
import 'package:chat_charm_website/src/core/utils/colors.dart';
import 'package:chat_charm_website/src/core/widgets/k_handle_size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WebFeaturesCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  const WebFeaturesCard(
      {super.key,
      required this.icon,
      required this.title,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 130,
      width: context.screenWidth<1100?context.screenWidth / 2.5:context.screenWidth / 3.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          kHandleSize(
            context: context,
            for600: 10,
            for700: 15,
            forFullScreen: 20,
          ),
        ),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Container(
            height: context.screenWidth<600?30:100,
            width:context.screenWidth<600?30: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(context.screenWidth<600?5:20), color: kPrimaryColor),
            child: Icon(
              icon,
              size:context.screenWidth<600?20: 50,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  description,
                  maxLines: 3,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
