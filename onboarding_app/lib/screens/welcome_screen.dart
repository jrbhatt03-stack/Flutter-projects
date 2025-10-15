import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  final VoidCallback onNext;

  const WelcomeScreen({super.key, required this.onNext});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Placeholder for the image
          Expanded(
            child: Center(
              child: Icon(
                Icons.image,
                size: 150,
                color: Colors.grey[300],
              ),
            ),
          ),
          const Text(
            'Ace your studies with smart planning.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Struggling to manage your studies? lets plan, track, and optimize your learning for success!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 40),
          ElevatedButton(
            onPressed: onNext,
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 50),
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Text(
              'Next',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}