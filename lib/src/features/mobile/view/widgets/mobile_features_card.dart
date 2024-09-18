import 'package:chat_charm_website/src/core/extensions/build_context_extensions.dart';
import 'package:chat_charm_website/src/core/utils/colors.dart';
import 'package:flutter/material.dart';

class MobileFeatureCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  const MobileFeatureCard({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(bottom: 10),
      width: context.screenWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        context.screenWidth < 600 ? 5 : 20),
                    color: kPrimaryColor),
                child: Icon(
                  icon,
                  size: context.screenWidth < 600 ? 20 : 50,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                title,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
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
    );
  }
}
