import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopularVerbs extends StatelessWidget {
  final List<Map<String, String>> verbs = [
    {'verb': 'avoir', 'french': 'avoir', 'present': 'ai', 'future': 'aurai', 'passe_simple': 'eus', 'english': 'to have', 'pashto': 'لرل', 'dari': 'داشتن', 'arabic': 'يمتلك'},
    {'verb': 'être', 'french': 'être', 'present': 'suis', 'future': 'serai', 'passe_simple': 'fus', 'english': 'to be', 'pashto': 'وي', 'dari': 'بودن', 'arabic': 'أن يكون'},
    {'verb': 'aller', 'french': 'aller', 'present': 'vais', 'future': 'irai', 'passe_simple': 'allai', 'english': 'to go', 'pashto': 'تلل', 'dari': 'رفتن', 'arabic': 'ذهب'},
    {'verb': 'faire', 'french': 'faire', 'present': 'fais', 'future': 'ferai', 'passe_simple': 'fis', 'english': 'to do/make', 'pashto': 'کول', 'dari': 'انجام دادن', 'arabic': 'فعل'},
    {'verb': 'pouvoir', 'french': 'pouvoir', 'present': 'peux', 'future': 'pourrai', 'passe_simple': 'pus', 'english': 'can', 'pashto': 'کولای شي', 'dari': 'توانستن', 'arabic': 'يستطيع'},
    {'verb': 'partir', 'french': 'partir', 'present': 'pars', 'future': 'partirai', 'passe_simple': 'partis', 'english': 'to leave', 'pashto': 'پرېښودل', 'dari': 'ترک کردن', 'arabic': 'يغادر'},
    {'verb': 'vouloir', 'french': 'vouloir', 'present': 'veux', 'future': 'voudrai', 'passe_simple': 'voulus', 'english': 'to want', 'pashto': 'غواړم', 'dari': 'خواستن', 'arabic': 'يريد'},
    {'verb': 'prendre', 'french': 'prendre', 'present': 'prends', 'future': 'prendrai', 'passe_simple': 'pris', 'english': 'to take', 'pashto': 'اخيستل', 'dari': 'گرفتن', 'arabic': 'أخذ'},
    {'verb': 'voir', 'french': 'voir', 'present': 'vois', 'future': 'verrai', 'passe_simple': 'vis', 'english': 'to see', 'pashto': 'وینئ', 'dari': 'دیدن', 'arabic': 'رؤية'},
    {'verb': 'venir', 'french': 'venir', 'present': 'viens', 'future': 'viendrai', 'passe_simple': 'vins', 'english': 'to come', 'pashto': 'راځي', 'dari': 'آمدن', 'arabic': 'يأتي'},
    {'verb': 'devoir', 'french': 'devoir', 'present': 'dois', 'future': 'devrai', 'passe_simple': 'dus', 'english': 'must', 'pashto': 'باید', 'dari': 'باید', 'arabic': 'يجب'},
    {'verb': 'manger', 'french': 'manger', 'present': 'mange', 'future': 'mangerai', 'passe_simple': 'mangeai', 'english': 'to eat', 'pashto': 'خوړل', 'dari': 'خوردن', 'arabic': 'يأكل'},
    {'verb': 'savoir', 'french': 'savoir', 'present': 'sais', 'future': 'saurai', 'passe_simple': 'sus', 'english': 'to know', 'pashto': 'پوهیدل', 'dari': 'دانستن', 'arabic': 'يعرف'},
    {'verb': 'dire', 'french': 'dire', 'present': 'dis', 'future': 'dirai', 'passe_simple': 'dis', 'english': 'to say', 'pashto': 'وایی', 'dari': 'گفتن', 'arabic': 'يقول'},
    {'verb': 'mettre', 'french': 'mettre', 'present': 'mets', 'future': 'mettrai', 'passe_simple': 'mis', 'english': 'to put', 'pashto': 'ایښودل', 'dari': 'گذاشتن', 'arabic': 'وضع'},
    {'verb': 'finir', 'french': 'finir', 'present': 'fins', 'future': 'finirai', 'passe_simple': 'finis', 'english': 'to finish', 'pashto': 'ختمول', 'dari': 'تمام کردن', 'arabic': 'أنهى'},
    {'verb': 'lire', 'french': 'lire', 'present': 'lis', 'future': 'lirai', 'passe_simple': 'lus', 'english': 'to read', 'pashto': 'لوستل', 'dari': 'خواندن', 'arabic': 'يقرأ'},
    {'verb': 'sortir', 'french': 'sortir', 'present': 'sors', 'future': 'sortirai', 'passe_simple': 'sortis', 'english': 'to go out', 'pashto': 'بهر وتل', 'dari': 'بیرون رفتن', 'arabic': 'يخرج'},
    {'verb': 'parler', 'french': 'parler', 'present': 'parle', 'future': 'parlerai', 'passe_simple': 'parlai', 'english': 'to speak', 'pashto': 'خبری کول', 'dari': 'گفتگو کردن', 'arabic': 'يتكلم'},
    {'verb': 'aimer', 'french': 'aimer', 'present': 'aime', 'future': 'aimerai', 'passe_simple': 'aimai', 'english': 'to love', 'pashto': 'مینه کول', 'dari': 'دوست داشتن', 'arabic': 'حب'},
    {'verb': 'boire', 'french': 'boire', 'present': 'bois', 'future': 'boirai', 'passe_simple': 'bus', 'english': 'to drink', 'pashto': 'څښل', 'dari': 'نوشیدن', 'arabic': 'يشرب'},
    {'verb': 'recevoir', 'french': 'recevoir', 'present': 'reçois', 'future': 'recevrai', 'passe_simple': 'reçus', 'english': 'to receive', 'pashto': 'ترلاسه کول', 'dari': 'دریافت کردن', 'arabic': 'استلم'},
    {'verb': 'choisir', 'french': 'choisir', 'present': 'choisis', 'future': 'choisirai', 'passe_simple': 'choisis', 'english': 'to choose', 'pashto': 'انتخاب کول', 'dari': 'انتخاب کردن', 'arabic': 'اختار'},
    {'verb': 'dormir', 'french': 'dormir', 'present': 'dors', 'future': 'dormirai', 'passe_simple': 'dormis', 'english': 'to sleep', 'pashto': 'خوب', 'dari': 'خوابیدن', 'arabic': 'ينام'},
    {'verb': 'connaître', 'french': 'connaître', 'present': 'connaît', 'future': 'connaîtrai', 'passe_simple': 'connut', 'english': 'to know (someone)', 'pashto': 'پېژندل', 'dari': 'شناختن', 'arabic': 'يعرف (شخصًا)'},
    {'verb': 'attendre', 'french': 'attendre', 'present': 'attends', 'future': 'attendrai', 'passe_simple': 'attendis', 'english': 'to wait', 'pashto': 'انتظار', 'dari': 'صبر کردن', 'arabic': 'ينتظر'},
    {'verb': 'écrire', 'french': 'écrire', 'present': 'écris', 'future': 'écrirai', 'passe_simple': 'écrivit', 'english': 'to write', 'pashto': 'لیکل', 'dari': 'نوشتن', 'arabic': 'يكتب'},
    {'verb': 'envoyer', 'french': 'envoyer', 'present': 'envoie', 'future': 'enverrai', 'passe_simple': 'envoyai', 'english': 'to send', 'pashto': 'لېږل', 'dari': 'ارسال کردن', 'arabic': 'يرسل'},
    {'verb': 'jouer', 'french': 'jouer', 'present': 'joue', 'future': 'jouerai', 'passe_simple': 'jouai', 'english': 'to play', 'pashto': 'لوبې کول', 'dari': 'بازی کردن', 'arabic': 'يلعب'},
    {'verb': 'falloir', 'french': 'falloir', 'present': 'faut', 'future': 'faudra', 'passe_simple': 'fallut', 'english': 'to be necessary', 'pashto': 'اړینه ده', 'dari': 'لازم است', 'arabic': 'من الضروري'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Popular Verbs", style: TextStyle(fontSize: 22)),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView.builder(
        itemCount: verbs.length,
        itemBuilder: (context, index) {
          final verb = verbs[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VerbDetailPage(verb: verb),
                ),
              );
            },
            child: Card(
              margin: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 6,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      verb['french']!,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildTranslationColumn('English', verb['english']!),
                        _buildTranslationColumn('Pashto', verb['pashto']!),
                        _buildTranslationColumn('Dari', verb['dari']!),
                        _buildTranslationColumn('Arabic', verb['arabic']!),
                      ],
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

  Widget _buildTranslationColumn(String language, String translation) {
    return Column(
      children: [
        Text(
          language,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5),
        Text(
          translation,
          style: TextStyle(fontSize: 16, color: Colors.black54),
        ),
      ],
    );
  }
}

class VerbDetailPage extends StatelessWidget {
  final Map<String, String> verb;

  VerbDetailPage({required this.verb});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(verb['french']!),
        backgroundColor: Colors.deepPurple,
      ),
      body: PageView(
        children: [
          VerbDetailView(verb: verb, tense: 'Present', form: verb['present']!),
          VerbDetailView(verb: verb, tense: 'Future', form: verb['future']!),
          VerbDetailView(verb: verb, tense: 'Passé Simple', form: verb['passe_simple']!),
        ],
      ),
    );
  }
}

class VerbDetailView extends StatelessWidget {
  final Map<String, String> verb;
  final String tense;
  final String form;

  VerbDetailView({required this.verb, required this.tense, required this.form});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            verb['french']!,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26, color: Colors.deepPurple),
          ),
          SizedBox(height: 20),
          Text(
            '$tense: $form',
            style: TextStyle(fontSize: 20, color: Colors.black87),
          ),
          SizedBox(height: 30),
          Divider(),
          _buildTranslationDetail(verb['english']!, 'English'),
          _buildTranslationDetail(verb['pashto']!, 'Pashto'),
          _buildTranslationDetail(verb['dari']!, 'Dari'),
          _buildTranslationDetail(verb['arabic']!, 'Arabic'),
        ],
      ),
    );
  }

  Widget _buildTranslationDetail(String translation, String language) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        '$language: $translation',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 18, color: Colors.black54),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.deepPurple),
    home: PopularVerbs(),
  ));
}