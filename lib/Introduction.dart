import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Introduction extends StatefulWidget {
  @override
  _IntroductionState createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  List<Map<String, String>> phrases = [
    {
      'french': 'Comment vous appelez-vous ?',
      'english': 'What is your name?',
      'pashto': 'ستاسو نوم څه دی؟',
      'arabic': 'ما اسمك؟',
      'dari': 'نام شما چیست؟'
    },
    {
      'french': 'Je m\'appelle Hashmat.',
      'english': 'My name is Hashmat.',
      'pashto': 'زما نوم حشمت دی.',
      'arabic': 'اسمي حشمت.',
      'dari': 'نام من حشمت است.'
    },
    {
      'french': 'D\'où venez-vous ?',
      'english': 'Where are you from?',
      'pashto': 'تاسو له کوم ځایه یئ؟',
      'arabic': 'من أين أنت؟',
      'dari': 'شما از کجا هستید؟'
    },
    {
      'french': 'Je viens de Paris.',
      'english': 'I’m from Paris.',
      'pashto': 'زه د پاریس یم.',
      'arabic': 'أنا من باريس.',
      'dari': 'من از پاریس هستم.'
    },
    {
      'french': 'Quel âge avez-vous ?',
      'english': 'How old are you?',
      'pashto': 'ستاسو عمر څو دی؟',
      'arabic': 'كم عمرك؟',
      'dari': 'شما چند سال دارید؟'
    },
    {
      'french': 'J\'ai 20 ans.',
      'english': 'I am 20 years old.',
      'pashto': 'زه شل کلن یم.',
      'arabic': 'عمري 20 سنة.',
      'dari': 'من 20 ساله هستم.'
    },
    {
      'french': 'Que faites-vous dans la vie ?',
      'english': 'What do you do for a living?',
      'pashto': 'تاسو په ژوند کې څه کوئ؟',
      'arabic': 'ماذا تعمل؟',
      'dari': 'شما چه کار می‌کنید؟'
    },
    {
      'french': 'Je suis étudiant(e).',
      'english': 'I am a student.',
      'pashto': 'زه یو زده کوونکی یم.',
      'arabic': 'أنا طالب/طالبة.',
      'dari': 'من دانشجو هستم.'
    },
    {
      'french': 'Quels sont vos passe-temps ?',
      'english': 'What are your hobbies?',
      'pashto': 'ستاسو مشغولیتونه څه دي؟',
      'arabic': 'ما هي هواياتك؟',
      'dari': 'سرگرمی‌های شما چیست؟'
    },
    {
      'french': 'J\'aime jouer au football.',
      'english': 'I like playing football.',
      'pashto': 'زه فوټبال لوبول خوښوم.',
      'arabic': 'أحب لعب كرة القدم.',
      'dari': 'من فوتبال بازی کردن را دوست دارم.'
    },
    {
      'french': 'Où habitez-vous ?',
      'english': 'Where do you live?',
      'pashto': 'تاسو چېرته اوسیږئ؟',
      'arabic': 'أين تعيش؟',
      'dari': 'شما کجا زندگی می‌کنید؟'
    },
    {
      'french': 'Je suis étudiant(e).',
      'english': 'I am a student.',
      'pashto': 'زه زده کوونکی یم.',
      'arabic': 'أنا طالب.',
      'dari': 'من دانشجو هستم.'
    },
    {
      'french': 'Quels sont vos passe-temps ?',
      'english': 'What are your hobbies?',
      'pashto': 'ستاسو شوقونه څه دي؟',
      'arabic': 'ما هي هواياتك؟',
      'dari': 'سرگرمی‌های شما چیست؟'
    },
    {
      'french': 'J\'aime jouer au football.',
      'english': 'I like playing football.',
      'pashto': 'زه د فوټبال لوبه کول خوښوم.',
      'arabic': 'أحب لعب كرة القدم.',
      'dari': 'من فوتبال بازی کردن را دوست دارم.'
    },
    {
      'french': 'Avez-vous des frères et sœurs ?',
      'english': 'Do you have any siblings?',
      'pashto': 'ایا تاسو ورور او خویندې لرئ؟',
      'arabic': 'هل لديك إخوة أو أخوات؟',
      'dari': 'آیا شما خواهر یا برادر دارید؟'
    },
    {
      'french': 'J\'ai deux sœurs.',
      'english': 'I have two sisters.',
      'pashto': 'زه دوه خوېندې لرم.',
      'arabic': 'لدي أختان.',
      'dari': 'من دو خواهر دارم.'
    },
    {
      'french': 'Quel âge avez-vous ?',
      'english': 'How old are you?',
      'pashto': 'ستاسو عمر څومره دی؟',
      'arabic': 'كم عمرك؟',
      'dari': 'چند سال دارید؟'
    },
    {
      'french': 'J\'ai 25 ans.',
      'english': 'I am 25 years old.',
      'pashto': 'زه ۲۵ کلن یم.',
      'arabic': 'عمري ٢٥ سنة.',
      'dari': 'من ۲۵ ساله هستم.'
    },
    {
      'french': 'Quelle est votre couleur préférée ?',
      'english': 'What\'s your favorite color?',
      'pashto': 'ستاسو خوښې رنګ کوم دی؟',
      'arabic': 'ما هو لونك المفضل؟',
      'dari': 'رنگ مورد علاقه شما چیست؟'
    },
    {
      'french': 'Ma couleur préférée est le bleu.',
      'english': 'My favorite color is blue.',
      'pashto': 'زما خوښې رنګ آبي دی.',
      'arabic': 'لوني المفضل هو الأزرق.',
      'dari': 'رنگ مورد علاقه من آبی است.'
    }
  ];

  List<Map<String, String>> _favoritePhrases = [];
  int _currentIndex = 0;

  void _toggleFavorite(Map<String, String> phrase) {
    setState(() {
      if (_favoritePhrases.contains(phrase)) {
        _favoritePhrases.remove(phrase);
      } else {
        _favoritePhrases.add(phrase);
      }
    });
  }

  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Introduction Phrases",
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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: PageView.builder(
        itemCount: phrases.length,
        onPageChanged: _onPageChanged,
        itemBuilder: (context, index) {
          final phrase = phrases[index];
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 8,
              color: Colors.teal[50],
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      phrase['french']!,
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal[900],
                      ),
                    ),
                    SizedBox(height: 20.0),
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
      ),
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
                    phrase['french']!,
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
    home: Introduction(),
  ));
}
