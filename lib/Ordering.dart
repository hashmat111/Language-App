import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ordering extends StatefulWidget {
  @override
  _OrderingState createState() => _OrderingState();
}

class _OrderingState extends State<Ordering> {
  final List<Map<String, String>> _phrases = [
    {
      'french': 'Puis-je voir le menu, s\'il vous plaît ?',
      'english': 'Can I see the menu, please?',
      'pashto': 'کولی شم چې منیو وګورم، مهرباني وکړئ؟',
      'arabic': 'هل يمكنني رؤية القائمة، من فضلك؟',
      'dari': 'لطفاً می‌توانم منو را ببینم؟'
    },
    {
      'french': 'Je voudrais commander, s\'il vous plaît.',
      'english': 'I would like to order, please.',
      'pashto': 'زه غواړم چې آرډر وکړم، مهرباني وکړئ.',
      'arabic': 'أود أن أطلب، من فضلك.',
      'dari': 'لطفاً می‌خواهم سفارش دهم.'
    },
    {
      'french': 'Puis-je avoir un verre d\'eau ?',
      'english': 'Can I get a glass of water?',
      'pashto': 'کولی شم چې د اوبو یوه ګیلاس واخلم؟',
      'arabic': 'هل يمكنني الحصول على كوب من الماء؟',
      'dari': 'می‌توانم یک لیوان آب بگیرم؟'
    },
    {
      'french': 'Je voudrais un café au lait.',
      'english': 'I’d like a coffee with milk.',
      'pashto': 'زه غواړم یو قهوه د شیدو سره.',
      'arabic': 'أود فنجان قهوة بالحليب.',
      'dari': 'من یک قهوه با شیر می‌خواهم.'
    },
    {
      'french': 'Que recommandez-vous ?',
      'english': 'What do you recommend?',
      'pashto': 'تاسو څه سپارښتنه کوئ؟',
      'arabic': 'ماذا توصي؟',
      'dari': 'چه چیزی را توصیه می‌کنید؟'
    },
    {
      'french': 'J\'ai une réservation au nom de [Votre Nom].',
      'english': 'I have a reservation under the name [Your Name].',
      'pashto': 'زه د [ستاسو نوم] لاندې ریزرویشن لرم.',
      'arabic': 'لدي حجز باسم [اسمك].',
      'dari': 'من یک رزرو به نام [نام شما] دارم.'
    },
    {
      'french': 'L\'addition, s\'il vous plaît.',
      'english': 'Can I get the bill, please?',
      'pashto': 'کولی شم چې بل ترلاسه کړم، مهرباني وکړئ؟',
      'arabic': 'هل يمكنني الحصول على الفاتورة، من فضلك؟',
      'dari': 'لطفاً می‌توانم صورت‌حساب را دریافت کنم؟'
    },
    {
      'french': 'Le service est-il inclus ?',
      'english': 'Is service included?',
      'pashto': 'آیا خدمت شامل دی؟',
      'arabic': 'هل الخدمة مشمولة؟',
      'dari': 'آیا خدمات شامل است؟'
    },
    {
      'french': 'Je suis allergique aux noix.',
      'english': 'I’m allergic to nuts.',
      'pashto': 'زه د مغز لرونکو شیانو سره حساسیت لرم.',
      'arabic': 'أنا allergic للمكسرات.',
      'dari': 'من به آجیل حساسیت دارم.'
    },
    {
      'french': 'Je voudrais une option végétarienne.',
      'english': 'I’d like a vegetarian option.',
      'pashto': 'زه غواړم چې د سبزیجاتو انتخاب ولرم.',
      'arabic': 'أود خيار نباتي.',
      'dari': 'من یک گزینه گیاهی می‌خواهم.'
    },
    {
      'french': 'Puis-je avoir cela sans [ingrédient] ?',
      'english': 'Can I have this without [ingredient]?',
      'pashto': 'کولی شم چې دا د [جزء] پرته واخلم؟',
      'arabic': 'هل يمكنني الحصول على هذا بدون [مكون]؟',
      'dari': 'می‌توانم این را بدون [ماده] داشته باشم؟'
    },
    {
      'french': 'Je voudrais une table pour [nombre] personnes.',
      'english': 'I’d like a table for [number] people.',
      'pashto': 'زه غواړم د [شمیره] کسانو لپاره یوه میز.',
      'arabic': 'أود طاولة لـ [عدد] أشخاص.',
      'dari': 'من یک میز برای [شماره] نفر می‌خواهم.'
    },
    {
      'french': 'Avez-vous des plats du jour aujourd\'hui ?',
      'english': 'Do you have any specials today?',
      'pashto': 'آیا تاسو نن ځانګړي خواړه لرئ؟',
      'arabic': 'هل لديكم أي أطباق خاصة اليوم؟',
      'dari': 'آیا امروز غذاهای ویژه دارید؟'
    },
    {
      'french': 'Je voudrais faire une réservation.',
      'english': 'I would like to make a reservation.',
      'pashto': 'زه غواړم چې ریزرویشن وکړم.',
      'arabic': 'أود أن أقوم بالحجز.',
      'dari': 'من می‌خواهم یک رزرو انجام دهم.'
    },
    {
      'french': 'Puis-je avoir un menu en anglais ?',
      'english': 'Can I have a menu in English?',
      'pashto': 'کولی شم چې د انګلیسي ژبې منیو ولرم؟',
      'arabic': 'هل يمكنني الحصول على قائمة باللغة الإنجليزية؟',
      'dari': 'می‌توانم منو را به زبان انگلیسی داشته باشم؟'
    },
    {
      'french': 'Avez-vous des options sans gluten ?',
      'english': 'Do you have any gluten-free options?',
      'pashto': 'آیا تاسو د ګلوټین پرته انتخابونه لرئ؟',
      'arabic': 'هل لديك خيارات خالية من الغلوتين؟',
      'dari': 'آیا گزینه‌های بدون گلوتن دارید؟'
    },
    {
      'french': 'Je voudrais un verre de vin rouge.',
      'english': 'I would like a glass of red wine.',
      'pashto': 'زه غواړم د سره وینو یوه ګیلاس.',
      'arabic': 'أود كوبًا من النبيذ الأحمر.',
      'dari': 'من یک لیوان شراب قرمز می‌خواهم.'
    },
    {
      'french': 'Puis-je avoir l’addition séparée ?',
      'english': 'Can I have the bill separately?',
      'pashto': 'کولی شم چې بل جلا ترلاسه کړم؟',
      'arabic': 'هل يمكنني الحصول على الفاتورة بشكل منفصل؟',
      'dari': 'می‌توانم صورت‌حساب را جداگانه دریافت کنم؟'
    },
    {
      'french': 'Je voudrais un dessert, s’il vous plaît.',
      'english': 'I would like a dessert, please.',
      'pashto': 'زه غواړم یو ډیزرټ، مهرباني وکړئ.',
      'arabic': 'أود حلوى، من فضلك.',
      'dari': 'من یک دسر می‌خواهم، لطفاً.'
    },
    {
      'french': 'Est-ce que ce plat est épicé ?',
      'english': 'Is this dish spicy?',
      'pashto': 'آیا دا ډش تنده ده؟',
      'arabic': 'هل هذا الطبق حار؟',
      'dari': 'آیا این غذا تند است؟'
    },
    {
      'french': 'Je voudrais payer par carte.',
      'english': 'I would like to pay with a card.',
      'pashto': 'زه غواړم د کارت سره تادیه وکړم.',
      'arabic': 'أود أن أدفع باستخدام بطاقة.',
      'dari': 'من می‌خواهم با کارت پرداخت کنم.'
    },
    {
      'french': 'Comment souhaitez-vous payer, par carte ou en espèces ?',
      'english': 'How would you like to pay, by card or cash?',
      'pashto': 'تاسو څنګه غواړئ تادیه وکړئ، د کارت یا نغدو پیسو سره؟',
      'arabic': 'كيف تود الدفع، بالبطاقة أم نقداً؟',
      'dari': 'چگونه می‌خواهید پرداخت کنید، با کارت یا نقدی؟'
    }
  ];

  List<Map<String, String>> _favoritePhrases = [];

  void _toggleFavorite(Map<String, String> phrase) {
    setState(() {
      if (_favoritePhrases.contains(phrase)) {
        _favoritePhrases.remove(phrase);
      } else {
        _favoritePhrases.add(phrase);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Ordering Phrases",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.teal,
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(text: 'Phrases'),
              Tab(text: 'Favorites'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildPhrasesPage(),
            _buildFavoritesPage(),
          ],
        ),
      ),
    );
  }

  Widget _buildPhrasesPage() {
    return ListView.builder(
      itemCount: _phrases.length,
      itemBuilder: (context, index) {
        final phrase = _phrases[index];
        final isFavorite = _favoritePhrases.contains(phrase);
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 8,
            color: Colors.teal[50],
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    phrase['french'] ?? '',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.teal[900],
                    ),
                  ),
                  SizedBox(height: 12.0),
                  _buildTranslationText('English', phrase['english']),
                  _buildTranslationText('Pashto', phrase['pashto']),
                  _buildTranslationText('Arabic', phrase['arabic']),
                  _buildTranslationText('Dari', phrase['dari']),
                  SizedBox(height: 16.0),
                  IconButton(
                    icon: Icon(
                      isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: isFavorite ? Colors.red : Colors.grey,
                    ),
                    onPressed: () {
                      _toggleFavorite(phrase);
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildFavoritesPage() {
    return _favoritePhrases.isEmpty
        ? Center(
      child: Text(
        "No favorites yet.",
        style: TextStyle(color: Colors.grey),
      ),
    )
        : ListView.builder(
      itemCount: _favoritePhrases.length,
      itemBuilder: (context, index) {
        final phrase = _favoritePhrases[index];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 8,
            color: Colors.teal[50],
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    phrase['french'] ?? '',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.teal[900],
                    ),
                  ),
                  SizedBox(height: 12.0),
                  _buildTranslationText('English', phrase['english']),
                  _buildTranslationText('Pashto', phrase['pashto']),
                  _buildTranslationText('Arabic', phrase['arabic']),
                  _buildTranslationText('Dari', phrase['dari']),
                  SizedBox(height: 16.0),
                  IconButton(
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                    onPressed: () {
                      _toggleFavorite(phrase);
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildTranslationText(String language, String? translation) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text(
        '$language: $translation',
        style: TextStyle(fontSize: 16, color: Colors.black87),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Ordering(),
  ));
}