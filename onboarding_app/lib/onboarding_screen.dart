import 'package:flutter/material.dart';
import 'package:onboarding_app/screens/country_selection_screen.dart';
import 'package:onboarding_app/screens/course_selection_screen.dart';
import 'package:onboarding_app/screens/educational_stage_screen.dart';
import 'package:onboarding_app/screens/level_selection_screen.dart';
import 'package:onboarding_app/screens/welcome_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  void _nextPage() {
    if (_currentPage < 4) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    } else {
      // Handle onboarding completion
      print('Onboarding completed!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Progress bar
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: LinearProgressIndicator(
                value: (_currentPage + 1) / 5,
                backgroundColor: Colors.grey[300],
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
              ),
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                children: [
                  WelcomeScreen(onNext: _nextPage),
                  CountrySelectionScreen(onNext: _nextPage),
                  EducationalStageScreen(onNext: _nextPage),
                  CourseSelectionScreen(onNext: _nextPage),
                  LevelSelectionScreen(onNext: _nextPage),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}