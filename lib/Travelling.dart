import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Travelling extends StatefulWidget {
  @override
  _TravellingState createState() => _TravellingState();
}

class _TravellingState extends State<Travelling> {
  final List<Map<String, String>> phrases = [
    {
      'french': 'Où est la gare ?',
      'english': 'Where is the train station?',
      'pashto': 'قطار څرنګه ځای دی؟',
      'arabic': 'أين هي محطة القطار؟',
      'dari': 'ایستگاه قطار کجاست؟'
    },
    {
      'french': 'Je voudrais un taxi, s\'il vous plaît.',
      'english': 'I would like a taxi, please.',
      'pashto': 'زه غواړم چې ټیکسي، مهرباني وکړئ.',
      'arabic': 'أود أن أطلب سيارة أجرة، من فضلك.',
      'dari': 'لطفاً من یک تاکسی می‌خواهم.'
    },
    {
      'french': 'Quel est le meilleur moyen de transport ici ?',
      'english': 'What is the best way to get around here?',
      'pashto': 'دلته د تګ راتګ لپاره ترټولو غوره لاره څه ده؟',
      'arabic': 'ما هي أفضل وسيلة للتنقل هنا؟',
      'dari': 'بهترین روش برای جابجایی در اینجا چیست؟'
    },
    {
      'french': 'Je suis perdu. Pouvez-vous m\'aider ?',
      'english': 'I’m lost. Can you help me?',
      'pashto': 'زه ورک شوی یم. ایا تاسو کولی شئ ما سره مرسته وکړئ؟',
      'arabic': 'أنا ضائع. هل يمكنك مساعدتي؟',
      'dari': 'من گم شده‌ام. آیا می‌توانید به من کمک کنید؟'
    },
    {
      'french': 'Combien coûte un billet pour [destination] ?',
      'english': 'How much is a ticket to [destination]?',
      'pashto': 'د [مقصد] لپاره یو ټکټ څومره قیمت لري؟',
      'arabic': 'كم تكلفة تذكرة إلى [وجهة]؟',
      'dari': 'بلیط به [مقصد] چقدر هزینه دارد؟'
    },
    {
      'french': 'Y a-t-il un hôtel près d\'ici ?',
      'english': 'Is there a hotel nearby?',
      'pashto': 'دلته نږدې یوه هوټل شته؟',
      'arabic': 'هل يوجد فندق قريب من هنا؟',
      'dari': 'آیا در اینجا نزدیک یک هتل وجود دارد؟'
    },
    {
      'french': 'Je voudrais réserver une chambre.',
      'english': 'I would like to book a room.',
      'pashto': 'زه غواړم چې یوه خونه ونیسم.',
      'arabic': 'أود أن أحجز غرفة.',
      'dari': 'من می‌خواهم یک اتاق رزرو کنم.'
    },
    {
      'french': 'Pouvez-vous recommander un bon restaurant ?',
      'english': 'Can you recommend a good restaurant?',
      'pashto': 'آیا تاسو یو ښه رستوران وړاندیز کولی شئ؟',
      'arabic': 'هل يمكنك أن توصي بمطعم جيد؟',
      'dari': 'آیا می‌توانید یک رستوران خوب را معرفی کنید؟'
    },
    {
      'french': 'Je voudrais une carte de la ville.',
      'english': 'I would like a city map.',
      'pashto': 'زه غواړم د ښار نقشه.',
      'arabic': 'أود الحصول على خريطة المدينة.',
      'dari': 'من یک نقشه شهر می‌خواهم.'
    },
    {
      'french': 'Quel est le meilleur endroit pour acheter des souvenirs ?',
      'english': 'What is the best place to buy souvenirs?',
      'pashto': 'د یادګارونو اخیستو لپاره ترټولو غوره ځای څه دی؟',
      'arabic': 'ما هو أفضل مكان لشراء الهدايا التذكارية؟',
      'dari': 'بهترین مکان برای خرید سوغاتی کجاست؟'
    },
    {
      'french': 'Je voudrais des informations sur les visites guidées.',
      'english': 'I would like information on guided tours.',
      'pashto': 'زه غواړم د لارښودونو په اړه معلومات.',
      'arabic': 'أود الحصول على معلومات حول الجولات السياحية.',
      'dari': 'من اطلاعاتی درباره تورهای راهنمایی می‌خواهم.'
    }
  ];
  List<Map<String, String>> _filteredPhrases = [];
  List<Map<String, String>> _favoritePhrases = [];
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _filteredPhrases = phrases;
    _searchController.addListener(_filterPhrases);
  }

  void _filterPhrases() {
    final query = _searchController.text.toLowerCase();
    setState(() {
      _filteredPhrases = phrases.where((phrase) {
        return phrase['french']!.toLowerCase().contains(query) ||
            phrase['english']!.toLowerCase().contains(query) ||
            phrase['pashto']!.toLowerCase().contains(query) ||
            phrase['arabic']!.toLowerCase().contains(query) ||
            phrase['dari']!.toLowerCase().contains(query);
      }).toList();
    });
  }

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
            "Travelling",
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
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      hintText: 'Search phrases...',
                      hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                      prefixIcon: Icon(Icons.search, color: Colors.teal),
                    ),
                  ),
                ),
                Expanded(
                  child: _buildPhrasesList(),
                ),
              ],
            ),
            _buildFavoritesList(),
          ],
        ),
      ),
    );
  }

  Widget _buildPhrasesList() {
    return _filteredPhrases.isEmpty
        ? Center(child: Text("No phrases found.", style: TextStyle(color: Colors.grey)))
        : ListView.builder(
      itemCount: _filteredPhrases.length,
      itemBuilder: (context, index) {
        final phrase = _filteredPhrases[index];
        return Card(
          color: Colors.teal[50],
          margin: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: ListTile(
            contentPadding: EdgeInsets.all(16.0),
            title: Center(
              child: Text(
                phrase['french'] ?? '',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  color: Colors.teal[800],
                ),
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 8.0),
                _buildTranslationRow('English', phrase['english']),
                _buildTranslationRow('Pashto', phrase['pashto']),
                _buildTranslationRow('Arabic', phrase['arabic']),
                _buildTranslationRow('Dari', phrase['dari']),
              ],
            ),
            trailing: IconButton(
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
          ),
        );
      },
    );
  }

  Widget _buildFavoritesList() {
    return _favoritePhrases.isEmpty
        ? Center(child: Text("No favorites yet.", style: TextStyle(color: Colors.grey)))
        : ListView.builder(
      itemCount: _favoritePhrases.length,
      itemBuilder: (context, index) {
        final phrase = _favoritePhrases[index];
        return Card(
          color: Colors.teal[50],
          margin: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: ListTile(
            contentPadding: EdgeInsets.all(16.0),
            title: Center(
              child: Text(
                phrase['french'] ?? '',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  color: Colors.teal[800],
                ),
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 8.0),
                _buildTranslationRow('English', phrase['english']),
                _buildTranslationRow('Pashto', phrase['pashto']),
                _buildTranslationRow('Arabic', phrase['arabic']),
                _buildTranslationRow('Dari', phrase['dari']),
              ],
            ),
            trailing: IconButton(
              icon: Icon(
                Icons.favorite,
                color: Colors.red,
              ),
              onPressed: () {
                _toggleFavorite(phrase);
              },
            ),
          ),
        );
      },
    );
  }

  Widget _buildTranslationRow(String language, String? translation) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Text(
        '$language: $translation',
        style: TextStyle(color: Colors.teal[700]),
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}