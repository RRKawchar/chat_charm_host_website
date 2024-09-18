import 'package:chat_charm_website/src/core/extensions/build_context_extensions.dart';
import 'package:chat_charm_website/src/core/utils/assets_path.dart';
import 'package:chat_charm_website/src/core/widgets/my_custom_behavior.dart';
import 'package:flutter/material.dart';

class KScreenShotWidget extends StatelessWidget {
  const KScreenShotWidget({super.key});

  @override
  Widget build(BuildContext context) {

    var screenShotList = [
      AssetsPath.screen1,
      AssetsPath.screen2,
      AssetsPath.screen3,
      AssetsPath.screen4,
      AssetsPath.screen5,
      AssetsPath.screen6,
      AssetsPath.screen7,
      AssetsPath.screen8,
      AssetsPath.screen9,
    ];

    return  ScrollConfiguration(
      behavior: MyCustomScrollBehavior(),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: screenShotList
              .map(
                (e) => Container(
              padding:  const EdgeInsets.all(10),
              margin:  const EdgeInsets.all(10),
              height:context.screenWidth<600?380: 500,
              width:context.screenWidth<600?220:  280,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey,
              ),
              child: ClipRRect(

                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(e,fit: BoxFit.fill,)),
            ),
          )
              .toList(),
        ),
      ),
    );
  }
}
