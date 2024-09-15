import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Transportation extends StatelessWidget {
  final List<Map<String, String>> vehicles = [
    {'name': 'Car', 'french': 'Voiture', 'pashto': 'موټر', 'dari': 'موتر', 'arabic': 'سيارة', 'image': 'assest/images/kar.jpg'},
    {'name': 'Bicycle', 'french': 'Vélo', 'pashto': 'بایسکل', 'dari': 'بایسکل', 'arabic': 'دراجة', 'image': 'assest/images/bicycle.jpg'},
    {'name': 'Train', 'french': 'Train', 'pashto': 'اورګاډی', 'dari': 'قطار', 'arabic': 'قطار', 'image': 'assest/images/train.jpg'},
    {'name': 'Airplane', 'french': 'Avion', 'pashto': 'الوتکه', 'dari': 'هواپيما', 'arabic': 'طائرة', 'image': 'assest/images/airplane.jpg'},
    {'name': 'Bus', 'french': 'Bus', 'pashto': 'بس', 'dari': 'بس', 'arabic': 'حافلة', 'image': 'assest/images/bus.jpg'},
    {'name': 'Motorcycle', 'french': 'Moto', 'pashto': 'موټرسایکل', 'dari': 'موترسایکل', 'arabic': 'دراجة نارية', 'image': 'assest/images/motorcycle.jpg'},
    {'name': 'Boat', 'french': 'Bateau', 'pashto': 'کښتۍ', 'dari': 'کشتی', 'arabic': 'قارب', 'image': 'assest/images/boat.jpg'},
    {'name': 'Truck', 'french': 'Camion', 'pashto': 'لارۍ', 'dari': 'کامیون', 'arabic': 'شاحنة', 'image': 'assest/images/truck.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Transportation"),
      ),
      body: ListView.builder(
        itemCount: vehicles.length,
        itemBuilder: (context, index) {
          final vehicle = vehicles[index];
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
                        items: vehicles,
                        initialIndex: index,
                      ),
                    ),
                  );
                },
                child: Hero(
                  tag: vehicle['image']!,
                  child: Image.asset(
                    vehicle['image']!,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Center(
                child: Text(
                  vehicle['french']!,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'English: ${vehicle['name']}',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Pashto: ${vehicle['pashto']}',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Dari: ${vehicle['dari']}',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Arabic: ${vehicle['arabic']}',
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
        title: Text("Transportation Slideshow"),
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
    home: Transportation(),
  ));
}