import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Occupations extends StatelessWidget {
  final List<Map<String, String>> occupations = [
    {'name': 'Doctor', 'french': 'Docteur', 'pashto': 'ډاکټر', 'dari': 'دکتر', 'arabic': 'طبيب', 'image': 'assest/images/Doctor.jpg'},
    {'name': 'Engineer', 'french': 'Ingénieur', 'pashto': 'انجنیر', 'dari': 'مهندس', 'arabic': 'مهندس', 'image': 'assest/images/Engineer.jpg'},
    {'name': 'Teacher', 'french': 'Enseignant', 'pashto': 'ښوونکی', 'dari': 'معلم', 'arabic': 'معلم', 'image': 'assest/images/Teacher.jpg'},
    {'name': 'Chef', 'french': 'Chef', 'pashto': 'آشپز', 'dari': 'آشپز', 'arabic': 'طاهٍ', 'image': 'assest/images/Chef.jpg'},
    {'name': 'Police Officer', 'french': 'Policier', 'pashto': 'پولیس', 'dari': 'پولیس', 'arabic': 'ضابط شرطة', 'image': 'assest/images/Police.jpg'},
    {'name': 'Firefighter', 'french': 'Pompier', 'pashto': 'اور وژونکی', 'dari': 'آتش‌نشان', 'arabic': 'رجل الإطفاء', 'image': 'assest/images/Firefighter.jpg'},
    {'name': 'Farmer', 'french': 'Agriculteur', 'pashto': 'کروندګر', 'dari': 'دهقان', 'arabic': 'مزارع', 'image': 'assest/images/Farmer.jpg'},
    {'name': 'Pilot', 'french': 'Pilote', 'pashto': 'پیلوټ', 'dari': 'خلبان', 'arabic': 'طيار', 'image': 'assest/images/Pilot.jpg'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Occupations"),
      ),
      body: ListView.builder(
        itemCount: occupations.length,
        itemBuilder: (context, index) {
          final occupation = occupations[index];
          return Card(
            margin: EdgeInsets.all(8.0),
            elevation: 5,
            child: ListTile(
              contentPadding: EdgeInsets.all(16.0),
              leading: Hero(
                tag: occupation['image']!,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SlideshowPage(
                          items: occupations,
                          initialIndex: index,
                        ),
                      ),
                    );
                  },
                  child: Image.asset(
                    occupation['image']!,
                    width: 60, // Adjust size if needed
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Center(
                child: Text(
                  occupation['french']!,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'English: ${occupation['name']}',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Pashto: ${occupation['pashto']}',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Dari: ${occupation['dari']}',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Arabic: ${occupation['arabic']}',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class SlideshowPage extends StatefulWidget {
  final List<Map<String, String>> items;
  final int initialIndex;

  SlideshowPage({required this.items, required this.initialIndex});

  @override
  _SlideshowPageState createState() => _SlideshowPageState();
}

class _SlideshowPageState extends State<SlideshowPage> {
  late PageController _pageController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex;
    _pageController = PageController(initialPage: widget.initialIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Occupations Slideshow"),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: widget.items.length,
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              itemBuilder: (context, index) {
                final item = widget.items[index];
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Hero(
                      tag: item['image']!,
                      child: Image.asset(
                        item['image']!,
                        width: double.infinity,
                        height: 300,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      item['french']!,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'English: ${item['name']}',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      'Pashto: ${item['pashto']}',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      'Dari: ${item['dari']}',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      'Arabic: ${item['arabic']}',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                );
              },
            ),
          ),
          Container(
            color: Colors.black54,
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                '${_currentIndex + 1} / ${widget.items.length}',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Occupations(),
  ));
}