import 'package:flutter/material.dart';

class ResponsiveBuilder extends StatelessWidget {
  final Widget mobile;
  final Widget website;
  const ResponsiveBuilder({
    super.key,
    required this.mobile,
    required this.website,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,boxConstraint){
      if(boxConstraint.maxWidth<600){
        return mobile;
      }else{
        return website;
      }
    });
  }
}
