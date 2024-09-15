import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Direction extends StatefulWidget {
  @override
  _DirectionState createState() => _DirectionState();
}

class _DirectionState extends State<Direction> {
  final List<Map<String, String>> phrases = [
    {
      'french': 'Où est l\'Université de Bourgogne Dijon ?',
      'english': 'Where is Bourgogne University Dijon?',
      'pashto': 'د بورګوني پوهنتون دیجون چیرته دی؟',
      'arabic': 'أين هو جامعة بورغون ديجون؟',
      'dari': 'دانشگاه بورگونی دیجون کجا است؟'
    },
    {
      'french': 'Comment aller à l\'Université de Bourgogne Dijon ?',
      'english': 'How to get to Bourgogne University Dijon?',
      'pashto': 'د بورګوني پوهنتون دیجون ته څنګه لاړ شم؟',
      'arabic': 'كيف أذهب إلى جامعة بورغون ديجون؟',
      'dari': 'چطور به دانشگاه بورگونی دیجون بروم؟'
    },
    {
      'french': 'C’est loin d’ici ?',
      'english': 'Is it far from here?',
      'pashto': 'دا دلته لیرې دی؟',
      'arabic': 'هل هو بعيد من هنا؟',
      'dari': 'آیا اینجا از اینجا دور است؟'
    },
    {
      'french': 'Pouvez-vous m’indiquer sur la carte ?',
      'english': 'Can you show me on the map?',
      'pashto': 'آیا تاسو کولی شئ چې ما ته په نقشه کې وښایاست؟',
      'arabic': 'هل يمكنك أن توضح لي على الخريطة؟',
      'dari': 'آیا می‌توانید روی نقشه به من نشان دهید؟'
    },
    {
      'french': 'Je cherche l\'Université de Bourgogne Dijon.',
      'english': 'I am looking for Bourgogne University Dijon.',
      'pashto': 'زه د بورګوني پوهنتون دیجون لټوم.',
      'arabic': 'أنا أبحث عن جامعة بورغون ديجون.',
      'dari': 'من به دنبال دانشگاه بورگونی دیجون هستم.'
    },
    {
      'french': 'Est-ce près d’ici ?',
      'english': 'Is it near here?',
      'pashto': 'آیا دا دلته نږدې دی؟',
      'arabic': 'هل هو قريب من هنا؟',
      'dari': 'آیا اینجا نزدیک است؟'
    },
    {
      'french': 'Quel chemin prendre pour l\'Université de Bourgogne Dijon ?',
      'english': 'Which way to Bourgogne University Dijon?',
      'pashto': 'د بورګوني پوهنتون دیجون ته کومه لاره واخلم؟',
      'arabic': 'أي طريق إلى جامعة بورغون ديجون؟',
      'dari': 'به دانشگاه بورگونی دیجون چه راهی باید بروم؟'
    },
    {
      'french': 'Y a-t-il un bus pour l\'Université de Bourgogne Dijon ?',
      'english': 'Is there a bus to Bourgogne University Dijon?',
      'pashto': 'آیا د بورګوني پوهنتون دیجون ته بس شته؟',
      'arabic': 'هل هناك حافلة إلى جامعة بورغون ديجون؟',
      'dari': 'آیا اتوبوسی به دانشگاه بورگونی دیجون وجود دارد؟'
    },
    {
      'french': 'Je suis perdu. Aidez-moi, s’il vous plaît.',
      'english': 'I’m lost. Please help me.',
      'pashto': 'زه ورک شوم. مهرباني وکړئ مرسته وکړئ.',
      'arabic': 'أنا ضائع. يرجى مساعدتي.',
      'dari': 'من گم شده‌ام. لطفاً کمک کنید.'
    },
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
            "Asking for Directions",
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
      itemCount: phrases.length,
      itemBuilder: (context, index) {
        final phrase = phrases[index];
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
                      _favoritePhrases.contains(phrase)
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color: _favoritePhrases.contains(phrase)
                          ? Colors.red
                          : Colors.grey,
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