import 'package:chat_charm_website/src/core/extensions/build_context_extensions.dart';
import 'package:chat_charm_website/src/core/utils/assets_path.dart';
import 'package:chat_charm_website/src/core/utils/colors.dart';
import 'package:chat_charm_website/src/core/widgets/k_handle_size.dart';
import 'package:flutter/material.dart';

class HomeInfoWidget extends StatelessWidget {
  const HomeInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "ChatCharm",
                style:context.screenWidth<600? Theme.of(context).textTheme.titleLarge:Theme.of(context).textTheme.displayLarge,
              ),
              Text(
                "ChatCharm is a best communication app to communicate your friends and family",
                style:context.screenWidth<600?Theme.of(context).textTheme.titleSmall: Theme.of(context).textTheme.titleLarge,
              ),
              const Text(
                "Version : 1.0.0",
                style: TextStyle(color: kPrimaryColor),
              ),
              Text("About The App",
                  style: context.screenWidth<600?Theme.of(context).textTheme.titleLarge:Theme.of(context).textTheme.displaySmall,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.8,
                child: Text(
                    "This chat app offers a seamless communication experience with features like Login & SignUp, "
                    "Profile editing, One-to-One Chat, "
                    "Audio & Video Calls, Group Creation, and Group Messaging, providing users with both personal"
                    " and group interaction options.",
                    style:context.screenWidth<600?Theme.of(context).textTheme.titleSmall: Theme.of(context).textTheme.bodyLarge),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: kHandleSize(context: context,for600: 2,for700: 15,forFullScreen:20,  ),
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          kHandleSize(context: context,for600: 10,for700: 15,forFullScreen:20,  ),),
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.android,
                          size: kHandleSize(context: context,for600: 25,for700: 40,forFullScreen:45,),
                        ),
                         SizedBox(width:context.screenWidth<600?5: 10),
                        Text(
                          "Download App",
                          style: TextStyle(
                            fontSize: kHandleSize(context: context,for600: 18,for700: 25,forFullScreen:35,),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )

            ],
          ),
        ),
        Container(
          height: context.screenWidth / 2.7,
          width: context.screenWidth / 2.7,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Theme.of(context).colorScheme.primary,
          ),
          child: Center(
            child: Image.asset(
              height: context.screenWidth / 4,
              width: context.screenWidth / 4,
              AssetsPath.screen1,

            ),
          ),
        )
      ],
    );
  }
}
