import 'package:flutter/material.dart';

class Greetings extends StatefulWidget {
  @override
  _GreetingsState createState() => _GreetingsState();
}

class _GreetingsState extends State<Greetings> {
  final List<Map<String, String>> _greetings = [
    {
      'french': 'Bonjour',
      'english': 'Good morning / Hello',
      'pashto': 'سهار مو پخير',
      'arabic': 'صباح الخير',
      'dari': 'صبح بخیر'
    },
    {
      'french': 'Bonsoir',
      'english': 'Good evening',
      'pashto': 'ماښام مو پخير',
      'arabic': 'مساء الخير',
      'dari': 'عصر بخیر'
    },
    {
      'french': 'Salut',
      'english': 'Hi / Hello',
      'pashto': 'سلام',
      'arabic': 'مرحبا',
      'dari': 'سلام'
    },
    {
      'french': 'Ça va ?',
      'english': 'How are you?',
      'pashto': 'څنګه يې؟',
      'arabic': 'كيف حالك؟',
      'dari': 'حال شما چطور است؟'
    },
    {
      'french': 'Merci',
      'english': 'Thank you',
      'pashto': 'مننه',
      'arabic': 'شكرا',
      'dari': 'تشکر'
    },
    {
      'french': 'De rien',
      'english': 'You’re welcome',
      'pashto': 'هېڅ شته نه',
      'arabic': 'على الرحب والسعة',
      'dari': 'خواهش می‌کنم'
    },
    {
      'french': 'Au revoir',
      'english': 'Goodbye',
      'pashto': 'خداى پامان',
      'arabic': 'وداعا',
      'dari': 'خداحافظ'
    },
    {
      'french': 'À bientôt',
      'english': 'See you soon',
      'pashto': 'ژر به وګورو',
      'arabic': 'أراك قريبا',
      'dari': 'به زودی می‌بینمت'
    },
    {
      'french': 'Bonne journée',
      'english': 'Have a good day',
      'pashto': 'ښه ورځ ولرئ',
      'arabic': 'أتمنى لك يوما سعيدا',
      'dari': 'روز خوبی داشته باشید'
    },
    {
      'french': 'Bonne nuit',
      'english': 'Good night',
      'pashto': 'شپه مو ښه',
      'arabic': 'تصبح على خير',
      'dari': 'شب بخیر'
    },
    {
      'french': 'Excusez-moi',
      'english': 'Excuse me',
      'pashto': 'بښنه غواړم',
      'arabic': 'عفوا',
      'dari': 'معذرت می‌خواهم'
    },
    {
      'french': 'Pardon',
      'english': 'Sorry',
      'pashto': 'بښنه غواړم',
      'arabic': 'آسف',
      'dari': 'ببخشید'
    },
    {
      'french': 'Je ne comprends pas',
      'english': 'I don’t understand',
      'pashto': 'زه نه پوهېږم',
      'arabic': 'لا أفهم',
      'dari': 'متوجه نمی‌شوم'
    },
    {
      'french': 'Parlez-vous anglais ?',
      'english': 'Do you speak English?',
      'pashto': 'آیا تاسو انګلیسي خبرې کوئ؟',
      'arabic': 'هل تتحدث الإنجليزية؟',
      'dari': 'آیا انگلیسی صحبت می‌کنید؟'
    },
    {
      'french': 'Comment vous appelez-vous ?',
      'english': 'What’s your name?',
      'pashto': 'ستاسې نوم څه دی؟',
      'arabic': 'ما اسمك؟',
      'dari': 'نام شما چیست؟'
    },
    {
      'french': 'Je m\'appelle...',
      'english': 'My name is...',
      'pashto': 'زما نوم دی...',
      'arabic': 'اسمي...',
      'dari': 'نام من ... است'
    },
    {
      'french': 'Oui',
      'english': 'Yes',
      'pashto': 'هو',
      'arabic': 'نعم',
      'dari': 'بله'
    },
    {
      'french': 'Non',
      'english': 'No',
      'pashto': 'نه',
      'arabic': 'لا',
      'dari': 'خیر'
    },
    {
      'french': 'S\'il vous plaît',
      'english': 'Please',
      'pashto': 'مهرباني',
      'arabic': 'من فضلك',
      'dari': 'لطفا'
    },
    {
      'french': 'Bienvenue',
      'english': 'Welcome',
      'pashto': 'خوش آمدید',
      'arabic': 'أهلا وسهلا',
      'dari': 'خوش آمدید'
    },
    {
      'french': 'Enchanté de faire votre connaissance',
      'english': 'Nice to meet you',
      'pashto': 'ستاسو سره د لیدو لپاره خوشحاله یم',
      'arabic': 'سعيد بلقائك',
      'dari': 'خوشحالم از دیدار شما'
    },
    {
      'french': 'Pouvez-vous m\'aider ?',
      'english': 'Can you help me?',
      'pashto': 'تاسو کولی شئ زما سره مرسته وکړئ؟',
      'arabic': 'هل يمكنك مساعدتي؟',
      'dari': 'آیا می‌توانید به من کمک کنید؟'
    },
    {
      'french': 'Où est la toilette ?',
      'english': 'Where is the bathroom?',
      'pashto': 'د تشناب کوم ځای دی؟',
      'arabic': 'أين الحمام؟',
      'dari': 'دستشویی کجاست؟'
    },
    {
      'french': 'Je suis perdu',
      'english': 'I am lost',
      'pashto': 'زه ورکه یم',
      'arabic': 'أنا ضائع',
      'dari': 'من گم شده‌ام'
    },
    {
      'french': 'Je voudrais un café, s\'il vous plaît',
      'english': 'I would like a coffee, please',
      'pashto': 'زه یو کافي غواړم، مهرباني وکړئ',
      'arabic': 'أود قهوة، من فضلك',
      'dari': 'من یک قهوه می‌خواهم، لطفا'
    },
    {
      'french': 'Quel temps fait-il ?',
      'english': 'What’s the weather like?',
      'pashto': 'هوا څنګه ده؟',
      'arabic': 'ما هو الطقس؟',
      'dari': 'آب و هوا چگونه است؟'
    },
    {
      'french': 'Je voudrais un ticket',
      'english': 'I would like a ticket',
      'pashto': 'زه یو ټکټ غواړم',
      'arabic': 'أريد تذكرة',
      'dari': 'من یک بلیط می‌خواهم'
    },
    {
      'french': 'Je suis en train de chercher...',
      'english': 'I am looking for...',
      'pashto': 'زه د ...پټوم',
      'arabic': 'أنا أبحث عن...',
      'dari': 'من در حال جستجو برای ... هستم'
    },
    {
      'french': 'C’est trop cher',
      'english': 'It’s too expensive',
      'pashto': 'دا ډیر ګران دی',
      'arabic': 'إنه غالي جدًا',
      'dari': 'خیلی گران است'
    },
    {
      'french': 'Je voudrais parler à quelqu’un',
      'english': 'I would like to speak to someone',
      'pashto': 'زه غواړم له چا سره خبرې وکړم',
      'arabic': 'أود التحدث إلى شخص ما',
      'dari': 'من می‌خواهم با کسی صحبت کنم'
    },
    {
      'french': 'Je suis content pour toi',
      'english': 'I’m happy for you',
      'pashto': 'زه ستاسو لپاره خوشحاله یم',
      'arabic': 'أنا سعيد من أجلك',
      'dari': 'من برای شما خوشحالم'
    },
    {
      'french': 'Je suis fatigué',
      'english': 'I am tired',
      'pashto': 'زه ستړی یم',
      'arabic': 'أنا متعب',
      'dari': 'من خسته‌ام'
    },
    {
      'french': 'C’est dommage',
      'english': 'It’s a pity',
      'pashto': 'دا افسوس دی',
      'arabic': 'إنه لأمر مؤسف',
      'dari': 'چه تاسف‌آور است'
    },
    {
      'french': 'À la prochaine',
      'english': 'Until next time',
      'pashto': 'تر بل ځل پورې',
      'arabic': 'إلى اللقاء',
      'dari': 'تا دفعه بعد'
    },
    {
      'french': 'Je dois y aller',
      'english': 'I have to go',
      'pashto': 'زه باید لاړ شم',
      'arabic': 'يجب أن أذهب',
      'dari': 'باید بروم'
    },
  ];
  int _currentIndex = 0;

  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Greetings in Multiple Languages'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.deepPurple, Colors.purpleAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                onPageChanged: _onPageChanged,
                itemCount: _greetings.length,
                itemBuilder: (context, index) {
                  final greeting = _greetings[index];
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Card(
                      elevation: 8.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              greeting['french']!,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 32.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepPurple,
                              ),
                            ),
                            SizedBox(height: 30.0),
                            _buildTranslationText('English', greeting['english']),
                            _buildTranslationText('Pashto', greeting['pashto']),
                            _buildTranslationText('Arabic', greeting['arabic']),
                            _buildTranslationText('Dari', greeting['dari']),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Greeting ${_currentIndex + 1} of ${_greetings.length}',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTranslationText(String language, String? translation) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Text(
        '$language: $translation',
        style: TextStyle(
          fontSize: 16.0,
          color: Colors.black87,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}