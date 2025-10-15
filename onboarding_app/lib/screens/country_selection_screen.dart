import 'package:flutter/material.dart';

class CountrySelectionScreen extends StatefulWidget {
  final VoidCallback onNext;

  const CountrySelectionScreen({super.key, required this.onNext});

  @override
  State<CountrySelectionScreen> createState() => _CountrySelectionScreenState();
}

class _CountrySelectionScreenState extends State<CountrySelectionScreen> {
  String? _selectedCountry;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Choose your country',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'So that we can list down the relative courses.',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 30),
          _buildCountryTile('India', '🇮🇳'),
          _buildCountryTile('United states of america', '🇺🇸'),
          _buildCountryTile('United kingdom', '🇬🇧'),
          _buildCountryTile('France', '🇫🇷'),
          _buildCountryTile('Singapore', '🇸🇬'),
          _buildCountryTile('Other', null),
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

  Widget _buildCountryTile(String country, String? flag) {
    final isSelected = _selectedCountry == country;
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedCountry = country;
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
            Row(
              children: [
                if (flag != null) ...[
                  Text(
                    flag,
                    style: const TextStyle(fontSize: 20),
                  ),
                  const SizedBox(width: 10),
                ],
                Text(
                  country,
                  style: const TextStyle(fontSize: 16),
                ),
              ],
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