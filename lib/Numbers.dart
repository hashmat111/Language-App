import 'package:flutter/material.dart';

class Numbers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> _numbers = List.generate(101, (index) {
      int number = index; // Includes zero
      return {
        'french': _numberToFrench(number),
        'english': _numberToEnglish(number),
        'pashto': _numberToPashto(number),
        'arabic': _numberToArabic(number),
        'dari': _numberToDari(number),
      };
    });

    return Scaffold(
      appBar: AppBar(
        title: Text("Numbers (0 to 100)"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: _numbers.length,
        itemBuilder: (context, index) {
          final number = _numbers[index];
          return Card(
            margin: EdgeInsets.all(8.0),
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      number['french'] ?? '',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text('English: ${number['english'] ?? ''}'),
                  Text('Pashto: ${number['pashto'] ?? ''}'),
                  Text('Arabic: ${number['arabic'] ?? ''}'),
                  Text('Dari: ${number['dari'] ?? ''}'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  String _numberToFrench(int number) {
    const frenchNumbers = [
      'zéro', 'un', 'deux', 'trois', 'quatre', 'cinq', 'six', 'sept', 'huit', 'neuf',
      'dix', 'onze', 'douze', 'treize', 'quatorze', 'quinze', 'seize', 'dix-sept',
      'dix-huit', 'dix-neuf', 'vingt', 'vingt et un', 'vingt-deux', 'vingt-trois',
      'vingt-quatre', 'vingt-cinq', 'vingt-six', 'vingt-sept', 'vingt-huit', 'vingt-neuf',
      'trente', 'trente et un', 'trente-deux', 'trente-trois', 'trente-quatre',
      'trente-cinq', 'trente-six', 'trente-sept', 'trente-huit', 'trente-neuf',
      'quarante', 'quarante et un', 'quarante-deux', 'quarante-trois', 'quarante-quatre',
      'quarante-cinq', 'quarante-six', 'quarante-sept', 'quarante-huit', 'quarante-neuf',
      'cinquante', 'cinquante et un', 'cinquante-deux', 'cinquante-trois', 'cinquante-quatre',
      'cinquante-cinq', 'cinquante-six', 'cinquante-sept', 'cinquante-huit', 'cinquante-neuf',
      'soixante', 'soixante et un', 'soixante-deux', 'soixante-trois', 'soixante-quatre',
      'soixante-cinq', 'soixante-six', 'soixante-sept', 'soixante-huit', 'soixante-neuf',
      'soixante-dix', 'soixante et onze', 'soixante-douze', 'soixante-treize', 'soixante-quatorze',
      'soixante-quinze', 'soixante-seize', 'soixante-dix-sept', 'soixante-dix-huit', 'soixante-dix-neuf',
      'quatre-vingts', 'quatre-vingt-un', 'quatre-vingt-deux', 'quatre-vingt-trois',
      'quatre-vingt-quatre', 'quatre-vingt-cinq', 'quatre-vingt-six', 'quatre-vingt-sept',
      'quatre-vingt-huit', 'quatre-vingt-neuf', 'quatre-vingt-dix', 'quatre-vingt-onze',
      'quatre-vingt-douze', 'quatre-vingt-treize', 'quatre-vingt-quatorze', 'quatre-vingt-quinze',
      'quatre-vingt-seize', 'quatre-vingt-dix-sept', 'quatre-vingt-dix-huit', 'quatre-vingt-dix-neuf'
    ];
    return number < frenchNumbers.length ? '${frenchNumbers[number]} (${number})' : '';
  }

  String _numberToEnglish(int number) {
    const englishNumbers = [
      'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine',
      'ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen',
      'eighteen', 'nineteen', 'twenty', 'twenty-one', 'twenty-two', 'twenty-three', 'twenty-four',
      'twenty-five', 'twenty-six', 'twenty-seven', 'twenty-eight', 'twenty-nine', 'thirty',
      'thirty-one', 'thirty-two', 'thirty-three', 'thirty-four', 'thirty-five', 'thirty-six',
      'thirty-seven', 'thirty-eight', 'thirty-nine', 'forty', 'forty-one', 'forty-two',
      'forty-three', 'forty-four', 'forty-five', 'forty-six', 'forty-seven', 'forty-eight',
      'forty-nine', 'fifty', 'fifty-one', 'fifty-two', 'fifty-three', 'fifty-four', 'fifty-five',
      'fifty-six', 'fifty-seven', 'fifty-eight', 'fifty-nine', 'sixty', 'sixty-one',
      'sixty-two', 'sixty-three', 'sixty-four', 'sixty-five', 'sixty-six', 'sixty-seven',
      'sixty-eight', 'sixty-nine', 'seventy', 'seventy-one', 'seventy-two', 'seventy-three',
      'seventy-four', 'seventy-five', 'seventy-six', 'seventy-seven', 'seventy-eight',
      'seventy-nine', 'eighty', 'eighty-one', 'eighty-two', 'eighty-three', 'eighty-four',
      'eighty-five', 'eighty-six', 'eighty-seven', 'eighty-eight', 'eighty-nine', 'ninety',
      'ninety-one', 'ninety-two', 'ninety-three', 'ninety-four', 'ninety-five', 'ninety-six',
      'ninety-seven', 'ninety-eight', 'ninety-nine', 'one hundred'
    ];
    return number < englishNumbers.length ? englishNumbers[number] : '';
  }

  String _numberToPashto(int number) {
    const pashtoNumbers = [
      'صفر', 'یو', 'دوه', 'درې', 'څلور', 'پینځه', 'شپږ', 'اووه', 'اته', 'نه',
      'لس', 'یولس', 'دولس', 'دیارلس', 'څلورلس', 'پنځلس', 'شپاړس', 'اوولس',
      'اتلس', 'نېولس', 'شل', 'یو ویشت', 'دوه ویشت', 'درې ویشت', 'څلور ویشت',
      'پنځه ویشت', 'شپږ ویشت', 'اووه ویشت', 'اته ویشت', 'نه ویشت', 'سی',
      'یویشتم', 'دویشتم', 'دریشتم', 'څلورویشتم', 'پنځویشتم', 'شپږویشتم',
      'اویا وییشتم', 'اته وییشتم', 'نه وییشتم', 'څلویښت', 'یولس', 'دوه ویشت',
      'دریشتم', 'څلورویشتم', 'پنځویشتم', 'شپږویشتم', 'اویا وییشتم', 'اته وییشتم',
      'نه وییشتم', 'پنجاه', 'پنجاه و یو', 'پنجاه و دوه', 'پنجاه و درې', 'پنجاه و څلور',
      'پنجاه و پنځه', 'پنجاه و شپږ', 'پنجاه و اووه', 'پنجاه و اته', 'پنجاه و نه',
      'شپېت', 'شپېت و یو', 'شپېت و دوه', 'شپېت و درې', 'شپېت و څلور', 'شپېت و پنځه',
      'شپېت و شپږ', 'شپېت و اووه', 'شپېت و اته', 'شپېت و نه', 'اویا', 'اویا و یو',
      'اویا و دوه', 'اویا و درې', 'اویا و څلور', 'اویا و پنځه', 'اویا و شپږ', 'اویا و اووه',
      'اویا و اته', 'اویا و نه', 'اتیا', 'اتیا و یو', 'اتیا و دوه', 'اتیا و درې', 'اتیا و څلور',
      'اتیا و پنځه', 'اتیا و شپږ', 'اتیا و اووه', 'اتیا و اته', 'اتیا و نه', 'نوي'
    ];
    return number < pashtoNumbers.length ? pashtoNumbers[number] : '';
  }

  String _numberToArabic(int number) {
    const arabicNumbers = [
      'صفر', 'واحد', 'اثنان', 'ثلاثة', 'أربعة', 'خمسة', 'ستة', 'سبعة', 'ثمانية', 'تسعة',
      'عشرة', 'أحد عشر', 'اثنا عشر', 'ثلاثة عشر', 'أربعة عشر', 'خمسة عشر', 'ستة عشر',
      'سبعة عشر', 'ثمانية عشر', 'تسعة عشر', 'عشرون', 'واحد وعشرون', 'اثنان وعشرون',
      'ثلاثة وعشرون', 'أربعة وعشرون', 'خمسة وعشرون', 'ستة وعشرون', 'سبعة وعشرون',
      'ثمانية وعشرون', 'تسعة وعشرون', 'ثلاثون', 'واحد وثلاثون', 'اثنان وثلاثون',
      'ثلاثة وثلاثون', 'أربعة وثلاثون', 'خمسة وثلاثون', 'ستة وثلاثون', 'سبعة وثلاثون',
      'ثمانية وثلاثون', 'تسعة وثلاثون', 'أربعون', 'واحد وأربعون', 'اثنان وأربعون',
      'ثلاثة وأربعون', 'أربعة وأربعون', 'خمسة وأربعون', 'ستة وأربعون', 'سبعة وأربعون',
      'ثمانية وأربعون', 'تسعة وأربعون', 'خمسون', 'واحد وخمسون', 'اثنان وخمسون',
      'ثلاثة وخمسون', 'أربعة وخمسون', 'خمسة وخمسون', 'ستة وخمسون', 'سبعة وخمسون',
      'ثمانية وخمسون', 'تسعة وخمسون', 'ستون', 'واحد وستون', 'اثنان وستون',
      'ثلاثة وستون', 'أربعة وستون', 'خمسة وستون', 'ستة وستون', 'سبعة وستون',
      'ثمانية وستون', 'تسعة وستون', 'سبعون', 'واحد وسبعون', 'اثنان وسبعون',
      'ثلاثة وسبعون', 'أربعة وسبعون', 'خمسة وسبعون', 'ستة وسبعون', 'سبعة وسبعون',
      'ثمانية وسبعون', 'تسعة وسبعون', 'ثمانون', 'واحد وثمانون', 'اثنان وثمانون',
      'ثلاثة وثمانون', 'أربعة وثمانون', 'خمسة وثمانون', 'ستة وثمانون', 'سبعة وثمانون',
      'ثمانية وثمانون', 'تسعة وثمانون', 'تسعون'
    ];
    return number < arabicNumbers.length ? arabicNumbers[number] : '';
  }

  String _numberToDari(int number) {
    const dariNumbers = [
      'صفر', 'یک', 'دو', 'سه', 'چهار', 'پنج', 'شش', 'هفت', 'هشت', 'نه', 'ده',
      'یازده', 'دوازده', 'سیزده', 'چهارده', 'پانزده', 'شانزده', 'هفده', 'هجده',
      'نوزده', 'بیست', 'بیست و یک', 'بیست و دو', 'بیست و سه', 'بیست و چهار', 'بیست و پنج',
      'بیست و شش', 'بیست و هفت', 'بیست و هشت', 'بیست و نه', 'سی', 'سی و یک', 'سی و دو',
      'سی و سه', 'سی و چهار', 'سی و پنج', 'سی و شش', 'سی و هفت', 'سی و هشت', 'سی و نه',
      'چهل', 'چهل و یک', 'چهل و دو', 'چهل و سه', 'چهل و چهار', 'چهل و پنج', 'چهل و شش',
      'چهل و هفت', 'چهل و هشت', 'چهل و نه', 'پنجاه', 'پنجاه و یک', 'پنجاه و دو', 'پنجاه و سه',
      'پنجاه و چهار', 'پنجاه و پنج', 'پنجاه و شش', 'پنجاه و هفت', 'پنجاه و هشت', 'پنجاه و نه',
      'شصت', 'شصت و یک', 'شصت و دو', 'شصت و سه', 'شصت و چهار', 'شصت و پنج', 'شصت و شش',
      'شصت و هفت', 'شصت و هشت', 'شصت و نه', 'هفتاد', 'هفتاد و یک', 'هفتاد و دو', 'هفتاد و سه',
      'هفتاد و چهار', 'هفتاد و پنج', 'هفتاد و شش', 'هفتاد و هفت', 'هفتاد و هشت', 'هفتاد و نه',
      'هشتاد', 'هشتاد و یک', 'هشتاد و دو', 'هشتاد و سه', 'هشتاد و چهار', 'هشتاد و پنج',
      'هشتاد و شش', 'هشتاد و هفت', 'هشتاد و هشت', 'هشتاد و نه', 'نود', 'نود و یک', 'نود و دو',
      'نود و سه', 'نود و چهار', 'نود و پنج', 'نود و شش', 'نود و هفت', 'نود و هشت', 'نود و نه',
      'یکصد'
    ];
    return number < dariNumbers.length ? dariNumbers[number] : '';
  }
}


void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.indigo,
    ),
    home: Numbers(),
  ));
}
