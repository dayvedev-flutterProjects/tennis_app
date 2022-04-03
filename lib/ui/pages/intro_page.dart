import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tennis_app/utils/image_paths.dart';
import 'package:tennis_app/utils/routes.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark,
    ));
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: const ExactAssetImage(ImagePaths.introBg),
          fit: BoxFit.fill,
          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.01), BlendMode.darken),
        ),
      ),

      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20,),

              Center(
                child: SizedBox(
                  width: 250.0,
                  child: DefaultTextStyle(
                    style: const TextStyle(
                      fontSize: 30.0, fontWeight: FontWeight.bold
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left:24.0),
                      child: AnimatedTextKit(
                        isRepeatingAnimation: false,

                        animatedTexts: [
                          TypewriterAnimatedText('SPORTVOLO', speed: Duration(milliseconds: 100)),
                        ],
                        onFinished: () {
                          Navigator.pushNamed(context, Routes.homePage);
                          print("Tap Event");
                        },
                        onTap: () {
                          print("Tap Event");
                        },
                      ),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),

    );
  }
}
