import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Vegetables extends StatelessWidget {
  final List<Map<String, String>> vegetables = [
    {'name': 'Carrot', 'french': 'Carotte', 'pashto': 'ګازر', 'dari': 'هویج', 'arabic': 'جزر', 'image': 'assest/images/Carrot.jpg'},
    {'name': 'Potato', 'french': 'Pomme de terre', 'pashto': 'کچالو', 'dari': 'کچالو', 'arabic': 'بطاطس', 'image': 'assest/images/Potato.jpg'},
    {'name': 'Tomato', 'french': 'Tomate', 'pashto': 'رومي', 'dari': 'گوجه فرنگی', 'arabic': 'طماطم', 'image': 'assest/images/Tomato.jpg'},
    {'name': 'Onion', 'french': 'Oignon', 'pashto': 'پیاز', 'dari': 'پیاز', 'arabic': 'بصل', 'image': 'assest/images/Onion.jpg'},
    {'name': 'Cucumber', 'french': 'Concombre', 'pashto': 'بادرنګ', 'dari': 'خیار', 'arabic': 'خيار', 'image': 'assest/images/Cucumber.jpg'},
    //{'name': 'Spinach', 'french': 'Épinard', 'pashto': 'سپانخ', 'dari': 'اسفناج', 'arabic': 'سبانخ', 'image': 'assest/images/Spinach.jpg'},

    {'name': 'Broccoli', 'french': 'Brocoli', 'pashto': 'بروکلی', 'dari': 'بروکلی', 'arabic': 'بروكلي', 'image': 'assest/images/Broccoli.jpg'},
    {'name': 'Lettuce', 'french': 'Laitue', 'pashto': 'سلاد', 'dari': 'کاهو', 'arabic': 'خس', 'image': 'assest/images/Lettuce.jpg'},
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vegetables"),
      ),
      body: ListView.builder(
        itemCount: vegetables.length,
        itemBuilder: (context, index) {
          final vegetable = vegetables[index];
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
                        items: vegetables,
                        initialIndex: index,
                      ),
                    ),
                  );
                },
                child: Hero(
                  tag: vegetable['image']!,
                  child: Image.asset(
                    vegetable['image']!,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Center(
                child: Text(
                  vegetable['french']!,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'English: ${vegetable['name']}',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Pashto: ${vegetable['pashto']}',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Dari: ${vegetable['dari']}',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Arabic: ${vegetable['arabic']}',
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
        title: Text("Vegetable Slideshow"),
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
    home: Vegetables(),
  ));
}