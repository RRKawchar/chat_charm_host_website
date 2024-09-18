import 'package:chat_charm_website/src/core/responsive/responsive_builder.dart';
import 'package:chat_charm_website/src/features/mobile/view/page/mobile_home_page.dart';
import 'package:chat_charm_website/src/features/web/view/page/web_home_page.dart';
import 'package:flutter/cupertino.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
        mobile: MobileHomePage(),
       website: WebHomePage(),
    );
  }
}
