import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShapesScreen extends StatelessWidget {
  final List<ShapeData> shapes = [
    ShapeData(BoxShape.circle, Colors.red, 'Cercle', 'Circle', 'دایره', 'دایره', 'دائرة'),
    ShapeData(BoxShape.rectangle, Colors.blue, 'Rectangle', 'Rectangle', 'مستطیل', 'مستطیل', 'مستطيل'),
    ShapeData(BoxShape.rectangle, Colors.green, 'Rectangle Arrondi', 'Rounded Rectangle', 'ګرد شوی مستطیل', 'مستطیل گرد', 'مستطيل مستدير', isRounded: true),
    ShapeData(BoxShape.rectangle, Colors.orange, 'Carré', 'Square', 'مربع', 'مربع', 'مربع', isSquare: true),
    ShapeData(BoxShape.rectangle, Colors.purple, 'Ovale', 'Oval', 'بیضوي', 'بیضوی', 'بيضوي', isCustom: true),
    ShapeData(BoxShape.rectangle, Colors.teal, 'Stade', 'Stadium', 'سټیډیم', 'استادیوم', 'ملعب', isStadium: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shapes"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16.0),
        children: List.generate(shapes.length, (index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ShapeDetailScreen(shapes: shapes, initialIndex: index),
                ),
              );
            },
            child: buildShapeContainer(shapes[index]),
          );
        }),
      ),
    );
  }

  Widget buildShapeContainer(ShapeData shapeData) {
    return Container(
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: shapeData.color,
        shape: shapeData.isCustom || shapeData.isStadium ? BoxShape.rectangle : shapeData.shape,
        borderRadius: shapeData.isStadium ? BorderRadius.circular(100) : shapeData.isRounded ? BorderRadius.circular(20) : null,
      ),
      height: shapeData.isSquare ? 100 : 150,
      width: shapeData.isSquare ? 100 : null,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              shapeData.label,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(
            'English: ${shapeData.english}\nPashto: ${shapeData.pashto}\nDari: ${shapeData.dari}\nArabic: ${shapeData.arabic}',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}

class ShapeDetailScreen extends StatefulWidget {
  final List<ShapeData> shapes;
  final int initialIndex;

  ShapeDetailScreen({required this.shapes, required this.initialIndex});

  @override
  _ShapeDetailScreenState createState() => _ShapeDetailScreenState();
}

class _ShapeDetailScreenState extends State<ShapeDetailScreen> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: widget.initialIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shape Details"),
      ),
      body: PageView.builder(
        controller: _pageController,
        itemCount: widget.shapes.length,
        itemBuilder: (context, index) {
          return Center(
            child: buildShapeDetail(widget.shapes[index]),
          );
        },
      ),
    );
  }

  Widget buildShapeDetail(ShapeData shapeData) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: shapeData.color,
            shape: shapeData.isCustom || shapeData.isStadium ? BoxShape.rectangle : shapeData.shape,
            borderRadius: shapeData.isStadium ? BorderRadius.circular(100) : shapeData.isRounded ? BorderRadius.circular(20) : null,
          ),
          height: 300,
          width: shapeData.isSquare ? 300 : 300,
          child: Center(
            child: Text(
              shapeData.label,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
        ),
        Text(
          'English: ${shapeData.english}\nPashto: ${shapeData.pashto}\nDari: ${shapeData.dari}\nArabic: ${shapeData.arabic}',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}

class ShapeData {
  final BoxShape shape;
  final Color color;
  final String label;
  final String english;
  final String pashto;
  final String dari;
  final String arabic;
  final bool isSquare;
  final bool isCustom;
  final bool isStadium;
  final bool isRounded;

  ShapeData(
      this.shape,
      this.color,
      this.label,
      this.english,
      this.pashto,
      this.dari,
      this.arabic, {
        this.isSquare = false,
        this.isCustom = false,
        this.isStadium = false,
        this.isRounded = false,
      });
}

void main() {
  runApp(MaterialApp(
    home: ShapesScreen(),
  ));
}
