import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Main application entry point for demonstration purposes
void main() {
  // Ensure the app runs with the desired font for accurate visual representation
  runApp(const OnboardingApp());
}

class OnboardingApp extends StatelessWidget {
  const OnboardingApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Set system UI overlay style to mimic the light mobile status bar
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    
    return MaterialApp(
      title: 'Smart Planning',
      // Define Inter-like font
      theme: ThemeData(fontFamily: 'Inter', useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: const OnboardingScreen(),
    );
  }
}

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Figma screen ratio is 812 (H) x 375 (W).
    final screenHeight = MediaQuery.of(context).size.height;

    // Proportional height calculations based on 812 total height:
    final topSectionRatio = 528 / 812;
    final bottomSectionRatio = 284 / 812;

    // Custom Colors (Hex to Flutter Color format 0xAARRGGBB)
    const lightBlueBackground = Color(0xFFB4DBFF);
    const whiteBackground = Color(0xFFFFFFFF);
    const primaryBlueButton = Color(0xFF3F7EFF);
    const darkText = Color(0xFF000000);
    const subTextColor = Color(0xFF71727A);

    // FIX 2: Wrapping the body with SafeArea to handle system navigation bars
    return Scaffold(
      body: SafeArea( 
        // We use a Stack to ensure the blue background covers the entire screen (FIX 1)
        child: Stack(
          children: [
            // Background Layer: Fills the entire screen with the light blue color
            Container(
              color: lightBlueBackground,
              height: screenHeight,
              width: double.infinity,
            ),

            // Foreground Layer: The main UI content, arranged in a Column
            Column(
              children: [
                // 1. TOP SECTION (Image Background)
                Expanded(
                  // flex value hints the sizing ratio
                  flex: (topSectionRatio * 100).round(), 
                  child: Container(
                    width: double.infinity,
                    color: lightBlueBackground,
                    alignment: Alignment.center,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Logo Placeholder: Replaced the generic icon with a themed one
                        Icon(
                          Icons.school, // Represents the graduation theme of your darklogo.png
                          size: 80,
                          color: darkText,
                        ),
                        // NOTE FOR YOUR LOGO: To use your actual 'darklogo.png', you would need to:
                        // 1. Save the image in your Flutter project's 'assets/images' folder.
                        // 2. Register the asset folder in your 'pubspec.yaml' file.
                        // 3. Replace this Icon widget with: Image.asset('assets/images/darklogo.png', width: 80, height: 80)
                      ],
                    ),
                  ),
                ),

                // 2. BOTTOM SECTION (Text and Button)
                Container(
                  height: screenHeight * bottomSectionRatio,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: whiteBackground,
                    // FIX 3: Removed the BoxShadow to achieve the clean, shadow-less look
                    // boxShadow: [], 
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24.0),
                      topRight: Radius.circular(24.0),
                    ),
                  ),
                  // Add padding inside the white section
                  padding: const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 12.0),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Text Content Section
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Heading Text
                          Text(
                            "Ace your studies with smart planning.",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w800, 
                              color: darkText,
                              height: 1.2, 
                            ),
                          ),
                          SizedBox(height: 12),
                          // Sub Text
                          Text(
                            "Struggling to manage your studies? lets plan, track, and optimize your learning for success!",
                            style: TextStyle(
                              fontSize: 16,
                              color: subTextColor,
                              height: 1.4,
                            ),
                          ),
                        ],
                      ),
                      
                      // Button
                      SizedBox(
                        width: double.infinity,
                        height: 48,
                        child: ElevatedButton(
                          onPressed: () {
                            // Action on button press
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Next button tapped!')),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: primaryBlueButton,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            elevation: 4, // Retaining the button's elevation for depth
                          ),
                          child: const Text(
                            'Next',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
