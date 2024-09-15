import 'package:flutter/material.dart';

class ColorNames extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Extended list of colors with their names in different languages
    final List<Map<String, String>> _colors = [
      {'french': 'Rouge', 'english': 'Red', 'pashto': 'سرخ', 'arabic': 'أحمر', 'dari': 'قرمز', 'color': 'red'},
      {'french': 'Bleu', 'english': 'Blue', 'pashto': 'آبی', 'arabic': 'أزرق', 'dari': 'آبی', 'color': 'blue'},
      {'french': 'Vert', 'english': 'Green', 'pashto': 'سبز', 'arabic': 'أخضر', 'dari': 'سبز', 'color': 'green'},
      {'french': 'Jaune', 'english': 'Yellow', 'pashto': 'ژېړ', 'arabic': 'أصفر', 'dari': 'زرد', 'color': 'yellow'},
      {'french': 'Blanc', 'english': 'White', 'pashto': 'سپین', 'arabic': 'أبيض', 'dari': 'سفید', 'color': 'white'},
      {'french': 'Noir', 'english': 'Black', 'pashto': 'تور', 'arabic': 'أسود', 'dari': 'سیاه', 'color': 'black'},
      {'french': 'Orange', 'english': 'Orange', 'pashto': 'اورنج', 'arabic': 'برتقالي', 'dari': 'نارنجی', 'color': 'orange'},
      {'french': 'Rose', 'english': 'Pink', 'pashto': 'ګلابي', 'arabic': 'وردي', 'dari': 'صورتی', 'color': 'pink'},
      {'french': 'Violet', 'english': 'Purple', 'pashto': 'بنفش', 'arabic': 'بنفسجي', 'dari': 'بنفش', 'color': 'purple'},
      {'french': 'Gris', 'english': 'Gray', 'pashto': 'خاکستری', 'arabic': 'رمادي', 'dari': 'خاکستری', 'color': 'gray'},
      {'french': 'Cyan', 'english': 'Cyan', 'pashto': 'سایان', 'arabic': 'سماوي', 'dari': 'آبی روشن', 'color': 'cyan'},
      {'french': 'Magenta', 'english': 'Magenta', 'pashto': 'ماجنتا', 'arabic': 'ماجنتا', 'dari': 'ماژنتا', 'color': 'magenta'},
      {'french': 'Lime', 'english': 'Lime', 'pashto': 'لیمویی', 'arabic': 'ليموني', 'dari': 'لیمو', 'color': 'lime'},
      {'french': 'Indigo', 'english': 'Indigo', 'pashto': 'انديگو', 'arabic': 'نيلي', 'dari': 'نیلی', 'color': 'indigo'},
      {'french': 'Teal', 'english': 'Teal', 'pashto': 'تیل', 'arabic': 'أزرق-أخضر', 'dari': 'فیروزه‌ای', 'color': 'teal'},
      {'french': 'Brown', 'english': 'Brown', 'pashto': 'براون', 'arabic': 'بني', 'dari': 'قهوه‌ای', 'color': 'brown'},
      {'french': 'Beige', 'english': 'Beige', 'pashto': 'بژ', 'arabic': 'بيج', 'dari': 'بژ', 'color': 'beige'},
      {'french': 'Corail', 'english': 'Coral', 'pashto': 'مرجانی', 'arabic': 'مرجاني', 'dari': 'مرجانی', 'color': 'coral'},
      {'french': 'Turquoise', 'english': 'Turquoise', 'pashto': 'فیروزه‌ای', 'arabic': 'تركواز', 'dari': 'فیروزه‌ای', 'color': 'turquoise'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Colors"),
      ),
      body: ListView.builder(
        itemCount: _colors.length,
        itemBuilder: (context, index) {
          final colorData = _colors[index];
          final colorName = colorData['french'] ?? '';
          final colorValue = colorData['color'] ?? 'grey';
          final color = _getColorFromName(colorValue);

          return Card(
            color: color,
            margin: EdgeInsets.all(8.0),
            elevation: 5,
            child: ListTile(
              contentPadding: EdgeInsets.all(16.0),
              title: Center(
                child: Text(
                  colorName,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20, // Increased font size for visibility
                    color: _getTextColor(color),
                  ),
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('English: ${colorData['english'] ?? ''}', style: TextStyle(color: _getTextColor(color))),
                  Text('Pashto: ${colorData['pashto'] ?? ''}', style: TextStyle(color: _getTextColor(color))),
                  Text('Arabic: ${colorData['arabic'] ?? ''}', style: TextStyle(color: _getTextColor(color))),
                  Text('Dari: ${colorData['dari'] ?? ''}', style: TextStyle(color: _getTextColor(color))),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  // Function to get the color from the name
  Color _getColorFromName(String colorName) {
    switch (colorName.toLowerCase()) {
      case 'red':
        return Colors.red;
      case 'blue':
        return Colors.blue;
      case 'green':
        return Colors.green;
      case 'yellow':
        return Colors.yellow;
      case 'white':
        return Colors.white;
      case 'black':
        return Colors.black;
      case 'orange':
        return Colors.orange;
      case 'pink':
        return Colors.pink;
      case 'purple':
        return Colors.purple;
      case 'gray':
        return Colors.grey;
      case 'cyan':
        return Colors.cyan;
      case 'magenta':
        return Colors.purpleAccent; // No direct magenta in Colors
      case 'lime':
        return Colors.lime;
      case 'indigo':
        return Colors.indigo;
      case 'teal':
        return Colors.teal;
      case 'brown':
        return Colors.brown;
      case 'beige':
        return Colors.grey[200] ?? Colors.grey; // Approximate beige
      case 'coral':
        return Colors.deepOrangeAccent; // Approximate coral
      case 'turquoise':
        return Colors.cyan[300] ?? Colors.cyan; // Approximate turquoise
      default:
        return Colors.grey; // Default color if not found
    }
  }

  // Function to get the text color based on background color
  Color _getTextColor(Color backgroundColor) {
    // Check luminance to determine if text should be dark or light
    return ThemeData.estimateBrightnessForColor(backgroundColor) == Brightness.light
        ? Colors.black
        : Colors.white;
  }
}

void main() {
  runApp(MaterialApp(
    home: ColorNames(),
  ));
}
