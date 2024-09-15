import 'package:flutter/material.dart';

class ObjectsThings extends StatefulWidget {
  const ObjectsThings({super.key});


  @override
  State<ObjectsThings> createState() => _ObjectsThingsState();
}

class _ObjectsThingsState extends State<ObjectsThings> {

  final List<Map<String, String>> objects = [
    {'name': 'Oven', 'french': 'Four', 'pashto': 'اوون', 'dari': 'فرن', 'arabic': 'فرن', 'image': 'assest/images/oven.jpg'},
    {'name': 'Refrigerator', 'french': 'Réfrigérateur', 'pashto': 'یخچال', 'dari': 'یخچال', 'arabic': 'ثلاجة', 'image': 'assest/images/Refrigerator.jpg'},
    {'name': 'Sink', 'french': 'Évier', 'pashto': 'چاڼې', 'dari': 'سینک', 'arabic': 'حوض', 'image': 'assest/images/sink.jpg'},
    {'name': 'Pot', 'french': 'Casserole', 'pashto': 'کاسو', 'dari': 'قاشق', 'arabic': 'وعاء', 'image': 'assest/images/pot.jpg'},
    {'name': 'Pan', 'french': 'Poêle', 'pashto': 'تابه', 'dari': 'تابه', 'arabic': 'مقلاة', 'image': 'assest/images/Pan.jpg'},
    {'name': 'Plate', 'french': 'Assiette', 'pashto': 'طبق', 'dari': 'بشقاب', 'arabic': 'طبق', 'image': 'assest/images/plate.jpg'},
    {'name': 'Glass', 'french': 'Verre', 'pashto': 'کاسه', 'dari': 'لیوان', 'arabic': 'كأس', 'image': 'assest/images/glass.jpg'},
    {'name': 'Fork', 'french': 'Fourchette', 'pashto': 'چمچ', 'dari': 'چنگال', 'arabic': 'شوكة', 'image': 'assest/images/fork.jpg'},
    {'name': 'Spoon', 'french': 'Cuillère', 'pashto': 'چمچ', 'dari': 'قاشق', 'arabic': 'ملعقة', 'image': 'assest/images/spoon.jpg'},
    {'name': 'Knife', 'french': 'Couteau', 'pashto': 'چاقو', 'dari': 'چاقو', 'arabic': 'سكين', 'image': 'assest/images/knife.jpg'},
    {'name': 'Bench', 'french': 'Banc', 'pashto': 'بنج', 'dari': 'مبل', 'arabic': 'مقعد', 'image': 'assest/images/Bench.jpg'},
    {'name': 'Umbrella', 'french': 'Parasol', 'pashto': 'شمسکۍ', 'dari': 'چتر', 'arabic': 'مظلة', 'image': 'assest/images/Umbrella.jpg'},
    {'name': 'Grill', 'french': 'Grill', 'pashto': 'ګریل', 'dari': 'کباب پز', 'arabic': 'شواية', 'image': 'assest/images/Grill.jpg'},
    {'name': 'Tent', 'french': 'Tente', 'pashto': 'خیمه', 'dari': 'خیمه', 'arabic': 'خيمة', 'image': 'assest/images/Tent.jpg'},
    {'name': 'Ball', 'french': 'Ballon', 'pashto': 'توپ', 'dari': 'توپ', 'arabic': 'كرة', 'image': 'assest/images/Ball.jpg'},
    {'name': 'Lantern', 'french': 'Lanterne', 'pashto': 'چراغ', 'dari': 'فانوس', 'arabic': 'فانوس', 'image': 'assest/images/Lantern.jpg'},
    {'name': 'Shovel', 'french': 'Pelle', 'pashto': 'پری', 'dari': 'بیل', 'arabic': 'مجرفة', 'image': 'assest/images/Shovel.jpg'},
    {'name': 'Watering Can', 'french': 'Arrosoir', 'pashto': 'اوبه ویشونکی', 'dari': 'آبپاش', 'arabic': 'ريشة', 'image': 'assest/images/WateringCan.jpg'},
    {'name': 'Greenhouse', 'french': 'Serre', 'pashto': 'ګلخانه', 'dari': 'گلخانه', 'arabic': 'بيوت زراعي', 'image': 'assest/images/Greenhouse.jpg'},
    {'name': 'Television', 'french': 'Télévision', 'pashto': 'تلویزیون', 'dari': 'تلویزیون', 'arabic': 'تلفاز', 'image': 'assest/images/Television.jpg'},
    {'name': 'Key', 'french': 'Clé', 'pashto': 'کیلي', 'dari': 'کلید', 'arabic': 'مفتاح', 'image': 'assest/images/Key.jpg'},
    {'name': 'Bag', 'french': 'Sac', 'pashto': 'کيسه', 'dari': 'کیف', 'arabic': 'حقيبة', 'image': 'assest/images/Bag.jpg'},
    {'name': 'Shoe', 'french': 'Chaussure', 'pashto': 'بوټ', 'dari': 'کفش', 'arabic': 'حذاء', 'image': 'assest/images/Shoe.jpg'},
    {'name': 'Hat', 'french': 'Chapeau', 'pashto': 'کلاه', 'dari': 'کلاه', 'arabic': 'قبعة', 'image': 'assest/images/Hat.jpg'},
    {'name': 'Watch', 'french': 'Montre', 'pashto': 'ساعت', 'dari': 'ساعت', 'arabic': 'ساعة', 'image': 'assest/images/Watch.jpg'},
    {'name': 'Camera', 'french': 'Appareil photo', 'pashto': 'کمره', 'dari': 'دوربین', 'arabic': 'كاميرا', 'image': 'assest/images/Camera.jpg'},
    {'name': 'Radio', 'french': 'Radio', 'pashto': 'راډیو', 'dari': 'رادیو', 'arabic': 'راديو', 'image': 'assest/images/Radio.jpg'},
    {'name': 'Computer', 'french': 'Ordinateur', 'pashto': 'کمپیوټر', 'dari': 'کامپیوتر', 'arabic': 'كمبيوتر', 'image': 'assest/images/Computer.jpg'},
    {'name': 'Backpack', 'french': 'Sac à dos', 'pashto': 'بکس', 'dari': 'کوله', 'arabic': 'حقيبة ظهر', 'image': 'assest/images/Backpack.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Common Objects"),
      ),
      body: ListView.builder(
        itemCount: objects.length,
        itemBuilder: (context, index) {
          final object = objects[index];
          return Card(
            margin: const EdgeInsets.all(8.0),
            elevation: 5,
            child: ListTile(
              contentPadding: const EdgeInsets.all(16.0),
              leading: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SlideshowPage(
                        items: objects,
                        initialIndex: index,
                      ),
                    ),
                  );
                },
                child: Hero(
                  tag: object['image']!,
                  child: Image.asset(
                    object['image']!,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Center(
                child: Text(
                  object['french']!,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'English: ${object['name']}',
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Pashto: ${object['pashto']}',
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Dari: ${object['dari']}',
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Arabic: ${object['arabic']}',
                    style: const TextStyle(fontSize: 16),
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

  const SlideshowPage({super.key, required this.items, required this.initialIndex});

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
        title: const Text("Slideshow"),
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
                    const SizedBox(height: 20),
                    Text(
                      item['french']!,
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'English: ${item['name']}',
                      style: const TextStyle(fontSize: 18),
                    ),
                    Text(
                      'Pashto: ${item['pashto']}',
                      style: const TextStyle(fontSize: 18),
                    ),
                    Text(
                      'Dari: ${item['dari']}',
                      style: const TextStyle(fontSize: 18),
                    ),
                    Text(
                      'Arabic: ${item['arabic']}',
                      style: const TextStyle(fontSize: 18),
                    ),
                  ],
                );
              },
            ),
          ),
          Container(
            color: Colors.black54,
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                '${_currentIndex + 1} / ${widget.items.length}',
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: ObjectsThings(),
  ));
}