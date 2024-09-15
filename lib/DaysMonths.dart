import 'package:flutter/material.dart';

class DaysMonths extends StatefulWidget {
  @override
  _DaysMonthsState createState() => _DaysMonthsState();
}

class _DaysMonthsState extends State<DaysMonths> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> days = [
      {'french': 'Lundi', 'english': 'Monday', 'pashto': 'دوشنبه', 'arabic': 'الإثنين', 'dari': 'دوشنبه'},
      {'french': 'Mardi', 'english': 'Tuesday', 'pashto': 'سه‌شنبه', 'arabic': 'الثلاثاء', 'dari': 'سه‌شنبه'},
      {'french': 'Mercredi', 'english': 'Wednesday', 'pashto': 'چهارشنبه', 'arabic': 'الأربعاء', 'dari': 'چهارشنبه'},
      {'french': 'Jeudi', 'english': 'Thursday', 'pashto': 'پنج‌شنبه', 'arabic': 'الخميس', 'dari': 'پنج‌شنبه'},
      {'french': 'Vendredi', 'english': 'Friday', 'pashto': 'جمعه', 'arabic': 'الجمعة', 'dari': 'جمعه'},
      {'french': 'Samedi', 'english': 'Saturday', 'pashto': 'شنبه', 'arabic': 'السبت', 'dari': 'شنبه'},
      {'french': 'Dimanche', 'english': 'Sunday', 'pashto': 'یکشنبه', 'arabic': 'الأحد', 'dari': 'یکشنبه'}
    ];

    final List<Map<String, String>> months = [
      {'french': 'Janvier', 'english': 'January', 'pashto': 'جنوري', 'arabic': 'يناير', 'dari': 'جنوری'},
      {'french': 'Février', 'english': 'February', 'pashto': 'فبروري', 'arabic': 'فبراير', 'dari': 'فبروری'},
      {'french': 'Mars', 'english': 'March', 'pashto': 'مارچ', 'arabic': 'مارس', 'dari': 'مارچ'},
      {'french': 'Avril', 'english': 'April', 'pashto': 'اپریل', 'arabic': 'أبريل', 'dari': 'اپریل'},
      {'french': 'Mai', 'english': 'May', 'pashto': 'مۍ', 'arabic': 'مايو', 'dari': 'مئ'},
      {'french': 'Juin', 'english': 'June', 'pashto': 'جون', 'arabic': 'يونيو', 'dari': 'جون'},
      {'french': 'Juillet', 'english': 'July', 'pashto': 'جولای', 'arabic': 'يوليو', 'dari': 'جولائی'},
      {'french': 'Août', 'english': 'August', 'pashto': 'اګست', 'arabic': 'أغسطس', 'dari': 'اگست'},
      {'french': 'Septembre', 'english': 'September', 'pashto': 'سپتمبر', 'arabic': 'سبتمبر', 'dari': 'سپتمبر'},
      {'french': 'Octobre', 'english': 'October', 'pashto': 'اکتوبر', 'arabic': 'أكتوبر', 'dari': 'اکتوبر'},
      {'french': 'Novembre', 'english': 'November', 'pashto': 'نوامبر', 'arabic': 'نوفمبر', 'dari': 'نوامبر'},
      {'french': 'Décembre', 'english': 'December', 'pashto': 'دسمبر', 'arabic': 'ديسمبر', 'dari': 'دسمبر'}
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Days and Months"),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'Days'),
            Tab(text: 'Months'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildPage('Days of the Week', days),
          _buildPage('Months of the Year', months),
        ],
      ),
    );
  }

  Widget _buildPage(String title, List<Map<String, String>> items) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: PageView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return GestureDetector(
            onTap: () {
              // Handle the tap if needed
              // For now, it just prints the tapped item
              print('Tapped on: ${item['french']}');
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 300),
              margin: EdgeInsets.symmetric(vertical: 8.0),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6.0,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      item['french'] ?? '',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text('English: ${item['english'] ?? ''}', style: TextStyle(fontSize: 18, color: Colors.white)),
                    Text('Pashto: ${item['pashto'] ?? ''}', style: TextStyle(fontSize: 18, color: Colors.white)),
                    Text('Arabic: ${item['arabic'] ?? ''}', style: TextStyle(fontSize: 18, color: Colors.white)),
                    Text('Dari: ${item['dari'] ?? ''}', style: TextStyle(fontSize: 18, color: Colors.white)),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: DaysMonths(),
  ));
}
