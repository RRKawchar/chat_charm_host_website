import 'package:chat_charm_website/src/core/extensions/build_context_extensions.dart';
import 'package:chat_charm_website/src/core/utils/colors.dart';
import 'package:chat_charm_website/src/core/widgets/my_custom_behavior.dart';
import 'package:flutter/material.dart';

class KFooterWidget extends StatelessWidget {
  const KFooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      alignment: Alignment.center,
      height:context.screenWidth<600?400: 300,
      color: Colors.white,
      child: ScrollConfiguration(
        behavior: MyCustomScrollBehavior(),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const Text(
                    "Developed by",style: TextStyle(
                      color: Colors.black
                  ),

                  ),
                  Container(height: 2,width: 200,color: kPrimaryColor,),
                  const Text(
                    "Riyazur Rohman Kawchar",style: TextStyle(
                      color: Colors.black
                  ),

                  ),
                  const Text(
                    "Software Engineer || Flutter",style: TextStyle(
                      color: Colors.black
                  ),),
                  const Text(
                    "riyazurrohmankawchar@gmail.com",style: TextStyle(
                      color: Colors.black
                  ),),
                  const Text(
                    "rrk940284@gmail.com",style: TextStyle(
                      color: Colors.black
                  ),),
                  const Text(
                    "01888610543",style: TextStyle(
                      color: Colors.black
                  ),),

                ],
              ),
              const SizedBox(width: 10),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const Text(
                    "Skills",style: TextStyle(
                      color: Colors.black
                  ),


                  ),
                  Container(height: 2,width: 120,color: kPrimaryColor,),
                  SizedBox(
                    width: context.screenWidth/4,
                    child: const Text(
                      "C, C++, Java, Java Swing, Dart, Flutter, MYSQL & NOSQL, Firebase, REST API's, Git & Github, Statemanagement (Getx,Provider, Bloc), Play Store & App Store",style: TextStyle(
                        color: Colors.black
                    ),

                    ),
                  ),


                ],
              ),

              const SizedBox(width: 20),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const Text(
                    "My Projects",style: TextStyle(
                      color: Colors.black
                  ),


                  ),
                  Container(height: 2,width: 200,color: kPrimaryColor,),
                  const Text(
                    "1. Square Limo || car book & reservation",style: TextStyle(
                      color: Colors.black
                  ),

                  ),
                  const Text(
                    "2. Square Limo Admin & Driver",style: TextStyle(
                      color: Colors.black
                  ),

                  ),
                  const Text(
                    "3. ALT || car book & reservation",style: TextStyle(
                      color: Colors.black
                  ),

                  ),
                  const Text(
                    "4. ALT Admin & driver",style: TextStyle(
                      color: Colors.black
                  ),

                  ),
                  const Text(
                    "5. MF FoodMart || Online Grocery App",style: TextStyle(
                      color: Colors.black
                  ),

                  ),
                  const Text(
                    "6. NewsTube App || News Portal Video",style: TextStyle(
                      color: Colors.black
                  ),

                  ),
                  const Text(
                    "7. Rajnity App || News portal paper app",style: TextStyle(
                      color: Colors.black
                  ),

                  ),

                  const Text(
                    "8. Prescribe App || Patient Admission app",style: TextStyle(
                      color: Colors.black
                  ),

                  ),


                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}
