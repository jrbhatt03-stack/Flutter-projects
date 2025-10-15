import 'package:flutter/material.dart';

class LevelSelectionScreen extends StatefulWidget {
  final VoidCallback onNext;

  const LevelSelectionScreen({super.key, required this.onNext});

  @override
  State<LevelSelectionScreen> createState() => _LevelSelectionScreenState();
}

class _LevelSelectionScreenState extends State<LevelSelectionScreen> {
  String? _selectedLevel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Select your level',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          _buildLevelTile('Foundation'),
          _buildLevelTile('Intermediate'),
          _buildLevelTile('Final'),
          const Spacer(),
          ElevatedButton(
            onPressed: widget.onNext,
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 50),
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Text(
              'Lets go!',
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

  Widget _buildLevelTile(String level) {
    final isSelected = _selectedLevel == level;
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedLevel = level;
        });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue.withOpacity(0.1) : Colors.white,
          border: Border.all(
            color: isSelected ? Colors.blue : Colors.grey[300]!,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              level,
              style: const TextStyle(fontSize: 16),
            ),
            if (isSelected)
              const Icon(
                Icons.check,
                color: Colors.blue,
              ),
          ],
        ),
      ),
    );
  }
}