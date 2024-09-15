import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClothingItems extends StatelessWidget {
  final List<Map<String, String>> clothes = [
    {'name': 'Shirt', 'french': 'Chemise', 'pashto': 'کميس', 'dari': 'پیراهن', 'arabic': 'قميص', 'image': 'assest/images/shirtss.jpg'},
    {'name': 'Pants', 'french': 'Pantalon', 'pashto': 'پتلون', 'dari': 'شلوار', 'arabic': 'بنطال', 'image': 'assest/images/Pants.jpg'},
    {'name': 'Dress', 'french': 'Robe', 'pashto': 'جامې', 'dari': 'لباس', 'arabic': 'فستان', 'image': 'assest/images/Dress.jpg'},
    {'name': 'Hat', 'french': 'Chapeau', 'pashto': 'خولۍ', 'dari': 'کلاه', 'arabic': 'قبعة', 'image': 'assest/images/Hat.jpg'},
    {'name': 'Shoes', 'french': 'Chaussures', 'pashto': 'بوټان', 'dari': 'کفش', 'arabic': 'أحذية', 'image': 'assest/images/Shoes.jpg'},
    {'name': 'Jacket', 'french': 'Veste', 'pashto': 'جاکټ', 'dari': 'ژاکت', 'arabic': 'سترة', 'image': 'assest/images/Jacket.jpg'},
    {'name': 'Socks', 'french': 'Chaussettes', 'pashto': 'جرابې', 'dari': 'جوراب', 'arabic': 'جوارب', 'image': 'assest/images/Socks.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clothing Items"),
      ),
      body: ListView.builder(
        itemCount: clothes.length,
        itemBuilder: (context, index) {
          final cloth = clothes[index];
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
                        items: clothes,
                        initialIndex: index,
                      ),
                    ),
                  );
                },
                child: Hero(
                  tag: cloth['image']!,
                  child: Image.asset(
                    cloth['image']!,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Center(
                child: Text(
                  cloth['french']!,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'English: ${cloth['name']}',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Pashto: ${cloth['pashto']}',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Dari: ${cloth['dari']}',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Arabic: ${cloth['arabic']}',
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
        title: Text("Clothing Slideshow"),
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
    home: ClothingItems(),
  ));
}