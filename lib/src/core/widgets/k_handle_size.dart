import 'package:chat_charm_website/src/core/extensions/build_context_extensions.dart';
import 'package:flutter/cupertino.dart';

double kHandleSize({
  required BuildContext context,
  required double for600,
  required double for700,
  required double forFullScreen,
}) {
  if (context.screenWidth < 600) {
    return for600;
  } else if (context.screenWidth < 700) {
    return for700;
  } else {
    return forFullScreen;
  }
}
