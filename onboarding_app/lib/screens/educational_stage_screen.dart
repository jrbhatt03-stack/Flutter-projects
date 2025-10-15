import 'package:flutter/material.dart';

class EducationalStageScreen extends StatefulWidget {
  final VoidCallback onNext;

  const EducationalStageScreen({super.key, required this.onNext});

  @override
  State<EducationalStageScreen> createState() => _EducationalStageScreenState();
}

class _EducationalStageScreenState extends State<EducationalStageScreen> {
  String? _selectedStage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Select your current educational stage',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          _buildStageTile('Secondary'),
          _buildStageTile('Higher secondary'),
          _buildStageTile('Under graduation'),
          _buildStageTile('Post graduation'),
          _buildStageTile('Professional / Competitive exams'),
          _buildStageTile('Foreign courses eg. CFA, ACCA, CMA(US)...'),
          _buildStageTile('Other'),
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

  Widget _buildStageTile(String stage) {
    final isSelected = _selectedStage == stage;
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedStage = stage;
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
              stage,
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