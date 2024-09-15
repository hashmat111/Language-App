import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:languageapp/Animals.dart';
import 'package:languageapp/ClothingItems.dart';
import 'package:languageapp/ColorNames.dart';
import 'package:languageapp/DaysMonths.dart';
import 'package:languageapp/Direction.dart';
import 'package:languageapp/FamilyM.dart';
import 'package:languageapp/Fruits.dart';
import 'package:languageapp/Introduction.dart';
import 'package:languageapp/Numbers.dart';
import 'package:languageapp/ObjectsThings.dart';
import 'package:languageapp/Occupations.dart';
import 'package:languageapp/Ordering.dart';
import 'package:languageapp/Shapess.dart';
import 'package:languageapp/Shopping.dart';
import 'package:languageapp/Transportation.dart';
import 'package:languageapp/Travelling.dart';
import 'package:languageapp/Vegetables.dart';
import 'package:languageapp/Gret.dart';
import 'package:languageapp/PopularVerbs.dart'; // Import Popular Verbs page

class FirstPage extends StatefulWidget {
  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..repeat(reverse: true);

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bienvenue"),
      ),
      body: Stack(
        children: [
          // Parallax background
          Positioned.fill(
            child: Image.asset(
              'assest/images/loveB.jpg', // Use the new image as background
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
          ),
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.3),
            ),
          ),
          // Main content
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListWheelScrollView(
              itemExtent: 200, // Height of each item
              diameterRatio: 1.5, // How much the items appear to be rotated
              useMagnifier: true, // Make the current item larger
              magnification: 1.2, // Magnification factor
              children: [
                buildSingleContainer(
                  context,
                  'assest/images/Gret.jpg',
                  'Leçon de Salutations',
                  Greetings(),
                ),
                buildSingleContainer(
                  context,
                  'assest/images/hello.jpg',
                  'Introduction',
                  Introduction(),
                ),
                buildSingleContainer(
                  context,
                  'assest/images/order.jpg',
                  'Commander',
                  Ordering(),
                ),
                buildSingleContainer(
                  context,
                  'assest/images/Dire.webp',
                  'Direction',
                  Direction(),
                ),
                buildSingleContainer(
                  context,
                  'assest/images/shopp.jpg',
                  'Shopping',
                  Shopping(),
                ),
                buildSingleContainer(
                  context,
                  'assest/images/travel.jpg',
                  'Voyager',
                  Travelling(),
                ),
                buildSingleContainer(
                  context,
                  'assest/images/numb.avif',
                  'Nombres',
                  Numbers(),
                ),
                buildSingleContainer(
                  context,
                  'assest/images/daysM.jpg',
                  'Jours & Mois',
                  DaysMonths(),
                ),
                buildSingleContainer(
                  context,
                  'assest/images/col.jpg',
                  'Couleurs',
                  ColorNames(),
                ),
                buildSingleContainer(
                  context,
                  'assest/images/obj.jpg',
                  'Objects',
                  ObjectsThings(),
                ),
                buildSingleContainer(
                  context,
                  'assest/images/familyM.jpg',
                  'la Famille',
                  FamilyM(),
                ),
                buildSingleContainer(
                  context,
                  'assest/images/anim.jpg',
                  'Animaux',
                  Animals(),
                ),
                buildSingleContainer(
                  context,
                  'assest/images/veg.jpg',
                  'Légumes',
                  Vegetables(),
                ),
                buildSingleContainer(
                  context,
                  'assest/images/fru.jpg',
                  'Fruits',
                  Fruits(),
                ),
                buildSingleContainer(
                  context,
                  'assest/images/cloth.jpg',
                  'Vêtements',
                  ClothingItems(),
                ),
                buildSingleContainer(
                  context,
                  'assest/images/shap.webp',
                  'Formes',
                  ShapesScreen(),
                ),
                buildSingleContainer(
                  context,
                  'assest/images/occ.jpg',
                  'Occupations',
                  Occupations(),
                ),
                buildSingleContainer(
                  context,
                  'assest/images/transportation.jpg',
                  'Transports',
                  Transportation(),
                ),
                buildSingleContainer(
                  context,
                  'assest/images/verbs.webp',  // New image for verbs
                  'Verbes Populaires',            // New item for Popular Verbs
                  PopularVerbs(),             // Link to Popular Verbs page
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSingleContainer(
      BuildContext context,
      String imagePath,
      String text,
      Widget page,
      ) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => page,
          ),
        );
      },
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return Transform.scale(
            scale: 1.0 + 0.05 * _animation.value,
            child: Container(
              width: double.infinity,
              height: 180,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Stack(
                children: [
                  // Image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                  // Text Overlay
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      color: Colors.black54, // Semi-transparent background
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        text,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
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
}

void main() {
  runApp(MaterialApp(
    home: FirstPage(),
  ));
}
