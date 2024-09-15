import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Animals extends StatelessWidget {
  final List<Map<String, String>> animals = [
    {'name': 'Dog', 'french': 'Chien', 'pashto': 'سپی', 'dari': 'سگ', 'arabic': 'كلب', 'image': 'assest/images/Dog.jpg'},
    {'name': 'Cat', 'french': 'Chat', 'pashto': 'ګیدړ', 'dari': 'گربه', 'arabic': 'قطة', 'image': 'assest/images/Cat.jpg'},
    {'name': 'Horse', 'french': 'Cheval', 'pashto': 'اسپ', 'dari': 'اسب', 'arabic': 'حصان', 'image': 'assest/images/Horse.jpg'},
    {'name': 'Elephant', 'french': 'Éléphant', 'pashto': 'فیل', 'dari': 'فیل', 'arabic': 'فيل', 'image': 'assest/images/Elephant.jpg'},
    {'name': 'Lion', 'french': 'Lion', 'pashto': 'پړانګ', 'dari': 'شیر', 'arabic': 'أسد', 'image': 'assest/images/Lion.jpg'},
    {'name': 'Monkey', 'french': 'Singe', 'pashto': 'میمون', 'dari': 'میمون', 'arabic': 'قرد', 'image': 'assest/images/Monkey.jpg'},
    // Add more animals as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animals"),
      ),
      body: PageView.builder(
        itemCount: animals.length,
        itemBuilder: (context, index) {
          final animal = animals[index];
          return AnimalSlide(animal: animal);
        },
      ),
    );
  }
}

class AnimalSlide extends StatelessWidget {
  final Map<String, String> animal;

  AnimalSlide({required this.animal});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Hero(
            tag: animal['image']!,
            child: Image.asset(
              animal['image']!,
              width: 300,
              height: 300,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 20),
          Text(
            animal['french']!,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          SizedBox(height: 10),
          Text(
            'English: ${animal['name']}',
            style: TextStyle(fontSize: 18),
          ),
          Text(
            'Pashto: ${animal['pashto']}',
            style: TextStyle(fontSize: 18),
          ),
          Text(
            'Dari: ${animal['dari']}',
            style: TextStyle(fontSize: 18),
          ),
          Text(
            'Arabic: ${animal['arabic']}',
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Animals(),
  ));
}
