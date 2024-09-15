import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FamilyM extends StatelessWidget {
  final List<Map<String, String>> familyMembers = [
    {'name': 'Father', 'french': 'Père', 'pashto': 'پلار', 'dari': 'پدر', 'arabic': 'أب'},
    {'name': 'Mother', 'french': 'Mère', 'pashto': 'مور', 'dari': 'مادر', 'arabic': 'أم'},
    {'name': 'Brother', 'french': 'Frère', 'pashto': 'ورور', 'dari': 'برادر', 'arabic': 'أخ'},
    {'name': 'Sister', 'french': 'Sœur', 'pashto': 'خور', 'dari': 'خواهر', 'arabic': 'أخت'},
    {'name': 'Grandfather', 'french': 'Grand-père', 'pashto': 'نیکه', 'dari': 'پدربزرگ', 'arabic': 'جد'},
    {'name': 'Grandmother', 'french': 'Grand-mère', 'pashto': 'نیا', 'dari': 'مادربزرگ', 'arabic': 'جدة'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Family Members"),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: familyMembers.length,
        itemBuilder: (context, index) {
          final member = familyMembers[index];
          return Card(
            margin: EdgeInsets.all(8.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 8,
            color: Colors.teal[50],
            child: Container(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Icon(
                    Icons.family_restroom,
                    size: 40,
                    color: Colors.teal,
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          member['french']!,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: Colors.teal[800],
                          ),
                        ),
                        SizedBox(height: 8.0),
                        _buildTranslationText('English', member['name']),
                        _buildTranslationText('Pashto', member['pashto']),
                        _buildTranslationText('Dari', member['dari']),
                        _buildTranslationText('Arabic', member['arabic']),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildTranslationText(String language, String? translation) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text(
        '$language: $translation',
        style: TextStyle(fontSize: 18, color: Colors.black87),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: FamilyM(),
  ));
}