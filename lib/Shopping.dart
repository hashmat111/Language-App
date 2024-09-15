import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Shopping extends StatefulWidget {
  @override
  _ShoppingState createState() => _ShoppingState();
}

class _ShoppingState extends State<Shopping> {
  final List<Map<String, String>> phrases = [
    {
      'french': 'Combien cela coûte-t-il ?',
      'english': 'How much does this cost?',
      'pashto': 'دا څومره قیمت لري؟',
      'arabic': 'كم يكلف هذا؟',
      'dari': 'این چقدر هزینه دارد؟'
    },
    {
      'french': 'Avez-vous cela dans une autre taille ?',
      'english': 'Do you have this in a different size?',
      'pashto': 'آیا دا په بل سایز کې شته؟',
      'arabic': 'هل لديك هذا بحجم آخر؟',
      'dari': 'آیا این در اندازه دیگری وجود دارد؟'
    },
    {
      'french': 'Pouvez-vous m\'aider à trouver [article] ?',
      'english': 'Can you help me find [item]?',
      'pashto': 'آیا تاسو کولی شئ ما سره د [شی] موندلو کې مرسته وکړئ؟',
      'arabic': 'هل يمكنك مساعدتي في العثور على [عنصر]؟',
      'dari': 'آیا می‌توانید به من در یافتن [مورد] کمک کنید؟'
    },
    {
      'french': 'Cet article est-il en stock ?',
      'english': 'Is this item in stock?',
      'pashto': 'آیا دا شی شتون لري؟',
      'arabic': 'هل هذا العنصر متوفر؟',
      'dari': 'آیا این مورد موجود است؟'
    },
    {
      'french': 'Puis-je payer par carte de crédit ?',
      'english': 'Can I pay by credit card?',
      'pashto': 'آیا زه کولی شم د کریډیټ کارت سره پیسې ورکړم؟',
      'arabic': 'هل يمكنني الدفع ببطاقة الائتمان؟',
      'dari': 'آیا می‌توانم با کارت اعتباری پرداخت کنم؟'
    },
    {
      'french': 'Puis-je retourner cet article ?',
      'english': 'Can I return this item?',
      'pashto': 'آیا زه کولی شم دا شی بیرته راولم؟',
      'arabic': 'هل يمكنني إرجاع هذا العنصر؟',
      'dari': 'آیا می‌توانم این مورد را برگردانم؟'
    },
    {
      'french': 'Y a-t-il une réduction sur cet article ?',
      'english': 'Is there a discount on this item?',
      'pashto': 'آیا په دې شی باندې تخفیف شته؟',
      'arabic': 'هل هناك خصم على هذا العنصر؟',
      'dari': 'آیا بر روی این مورد تخفیف وجود دارد؟'
    },
    {
      'french': 'Où est la caisse ?',
      'english': 'Where is the checkout?',
      'pashto': 'چیرته دی کښته؟',
      'arabic': 'أين هو المحاسب؟',
      'dari': 'صندوق کجاست؟'
    }
  ];


  List<Map<String, String>> _filteredPhrases = [];
  List<Map<String, String>> _favoritePhrases = [];
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _filteredPhrases = phrases; // Initialize filteredPhrases with all phrases
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
          title: Text("Shopping Phrases"),
          backgroundColor: Colors.deepPurple, // Updated color for the app bar
          bottom: TabBar(
            tabs: [
              Tab(text: 'Phrases'),
              Tab(text: 'Favorites'),
            ],
            indicatorColor: Colors.white, // Color for the tab indicator
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(12.0), // Increased padding
                  child: TextField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      hintText: 'Search phrases...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0), // Rounded borders
                      ),
                      prefixIcon: Icon(Icons.search, color: Colors.deepPurple),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.deepPurple, // Focused border color
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: _filteredPhrases.isNotEmpty
                      ? ListView.builder(
                    itemCount: _filteredPhrases.length,
                    itemBuilder: (context, index) {
                      final phrase = _filteredPhrases[index];
                      return Card(
                        margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                        elevation: 4,
                        shadowColor: Colors.deepPurpleAccent, // Updated shadow color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: ListTile(
                          contentPadding: EdgeInsets.all(16.0),
                          title: Center(
                            child: Text(
                              phrase['french'] ?? '',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                                color: Colors.deepPurple, // Updated text color
                              ),
                            ),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 8.0),
                              Text('English: ${phrase['english'] ?? ''}'),
                              Text('Pashto: ${phrase['pashto'] ?? ''}'),
                              Text('Arabic: ${phrase['arabic'] ?? ''}'),
                              Text('Dari: ${phrase['dari'] ?? ''}'),
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
                  )
                      : Center(
                    child: Text(
                      'No phrases found.',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                ),
              ],
            ),
            _favoritePhrases.isEmpty
                ? Center(child: Text('No favorites yet.'))
                : ListView.builder(
              itemCount: _favoritePhrases.length,
              itemBuilder: (context, index) {
                final phrase = _favoritePhrases[index];
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  elevation: 4,
                  shadowColor: Colors.deepPurpleAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: ListTile(
                    contentPadding: EdgeInsets.all(16.0),
                    title: Center(
                      child: Text(
                        phrase['french'] ?? '',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: Colors.deepPurple,
                        ),
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 8.0),
                        Text('English: ${phrase['english'] ?? ''}'),
                        Text('Pashto: ${phrase['pashto'] ?? ''}'),
                        Text('Arabic: ${phrase['arabic'] ?? ''}'),
                        Text('Dari: ${phrase['dari'] ?? ''}'),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}