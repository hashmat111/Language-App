import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class Fruits extends StatefulWidget {
  @override
  _FruitsState createState() => _FruitsState();
}

class _FruitsState extends State<Fruits> {
  final List<Map<String, String>> fruits = [
    {'name': 'Apple', 'french': 'Pomme', 'pashto': 'سیب', 'dari': 'سیب', 'arabic': 'تفاح', 'image': 'assest/images/Apple.jpg'},
    {'name': 'Banana', 'french': 'Banane', 'pashto': 'کېله', 'dari': 'موز', 'arabic': 'موز', 'image': 'assest/images/Banana.jpg'},
    {'name': 'Orange', 'french': 'Orange', 'pashto': 'مالټه', 'dari': 'پرتقال', 'arabic': 'برتقال', 'image': 'assest/images/Orange.jpg'},
    {'name': 'Strawberry', 'french': 'Fraise', 'pashto': 'توت', 'dari': 'توت فرنگی', 'arabic': 'فراولة', 'image': 'assest/images/Strawberry.jpg'},
    {'name': 'Grapes', 'french': 'Raisin', 'pashto': 'انګور', 'dari': 'انگور', 'arabic': 'عنب', 'image': 'assest/images/Grapes.jpg'},
    {'name': 'Watermelon', 'french': 'Pastèque', 'pashto': 'هندواڼه', 'dari': 'هندوانه', 'arabic': 'بطيخ', 'image': 'assest/images/Watermelon.jpg'},
    {'name': 'Pineapple', 'french': 'Ananas', 'pashto': 'اناناس', 'dari': 'اناناس', 'arabic': 'أناناس', 'image': 'assest/images/Pineapple.jpg'},
    {'name': 'Mango', 'french': 'Mangue', 'pashto': 'ام', 'dari': 'انبه', 'arabic': 'مانجو', 'image': 'assest/images/Mango.jpg'},
  ];

  final FlutterTts flutterTts = FlutterTts();

  @override
  void initState() {
    super.initState();
    _initTts();
  }

  Future<void> _initTts() async {
    await flutterTts.awaitSpeakCompletion(true); // Wait for completion before starting new speech
    await flutterTts.setSpeechRate(0.5); // Adjust speech rate
  }

  Future<void> _speak(String text, String languageCode) async {
    var result = await flutterTts.isLanguageAvailable(languageCode);
    if (result == true) {
      await flutterTts.setLanguage(languageCode);
      await flutterTts.setPitch(1.0);
      await flutterTts.speak(text);
    } else {
      print('Language $languageCode not available.');
    }
  }


  @override
  void dispose() {
    flutterTts.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fruits"),
      ),
      body: ListView.builder(
        itemCount: fruits.length,
        itemBuilder: (context, index) {
          final fruit = fruits[index];
          return Card(
            margin: EdgeInsets.all(8.0),
            elevation: 5,
            child: ListTile(
              contentPadding: EdgeInsets.all(16.0),
              leading: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SlideshowPage(
                        items: fruits,
                        initialIndex: index,
                      ),
                    ),
                  );
                },
                child: Hero(
                  tag: fruit['image']!,
                  child: Image.asset(
                    fruit['image']!,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Center(
                child: Text(
                  fruit['french']!,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'English: ${fruit['name']}',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Pashto: ${fruit['pashto']}',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Dari: ${fruit['dari']}',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Arabic: ${fruit['arabic']}',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              trailing: IconButton(
                icon: Icon(Icons.volume_up),
                onPressed: () {
                  String languageCode = 'en-US'; // Default to English
                  switch (fruit['name']) {
                    case 'Apple':
                      languageCode = 'fr-FR'; // French
                      break;
                    case 'Banana':
                      languageCode = 'ar-SA'; // Arabic
                      break;
                    case 'Orange':
                      languageCode = 'ps'; // Pashto
                      break;
                    case 'Strawberry':
                      languageCode = 'fa'; // Dari (Farsi)
                      break;
                  // Add more cases if needed
                  }
                  _speak(fruit['name']!, languageCode);
                },
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
        title: Text("Fruits Slideshow"),
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
                    IconButton(
                      icon: Icon(Icons.volume_up),
                      onPressed: () {
                        FlutterTts flutterTts = FlutterTts();
                        flutterTts.speak(item['name']!);
                      },
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
    home: Fruits(),
  ));
}
