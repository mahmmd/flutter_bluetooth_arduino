import 'package:flutter/material.dart';


class InfoPage extends StatefulWidget {
  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  new AppBar(
        title: Text('حول التطبيق'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            child: Card(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Center(
                  child: Text('المزرعة الذكية تطبيق تم إنشاؤه من اجل مساعدة المزارعين في عملية الري عن طريق ادخال التكنولوجيا الحديثة . \n \n وهو مشروع مقدم لكلية العلوم التطبيقية بجامعة سيئون قسم علوم الحاسوب لنيل درجة البكالوريوس لعام التخرج 2020م.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17
                  ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}