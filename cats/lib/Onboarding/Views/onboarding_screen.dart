import 'package:cats/Onboarding/Views/start_button.dart';
import 'package:flutter/material.dart';
import 'background_clip_path.dart';
import 'welcome_text.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: const <Widget>[
          BackgroundClipPath(),
          WelcomeText(),
          StartButton()
        ],
      ),
    );
  }
}
