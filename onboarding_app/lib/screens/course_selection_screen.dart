import 'package:flutter/material.dart';

class CourseSelectionScreen extends StatefulWidget {
  final VoidCallback onNext;

  const CourseSelectionScreen({super.key, required this.onNext});

  @override
  State<CourseSelectionScreen> createState() => _CourseSelectionScreenState();
}

class _CourseSelectionScreenState extends State<CourseSelectionScreen> {
  String? _selectedCourse;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Select your course!',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Colors.grey[200],
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView(
              children: [
                _buildCourseTile('Cost and management account.. (CMA)'),
                _buildCourseTile('Chartered accountant (CA)'),
                _buildCourseTile('Company secretary (CS)'),
                _buildCourseTile('JEE'),
                _buildCourseTile('NEET'),
                _buildCourseTile('GATE/CAT'),
                _buildCourseTile('Custom'),
              ],
            ),
          ),
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

  Widget _buildCourseTile(String course) {
    final isSelected = _selectedCourse == course;
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedCourse = course;
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
              course,
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