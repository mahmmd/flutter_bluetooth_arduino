


import 'package:bluetootharduino/about.dart';
import 'package:bluetootharduino/info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:url_launcher/url_launcher.dart';
import 'bluetoothApp.dart';
import 'package:toast/toast.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'عملية الري عن طريق البلوتوث',
       localizationsDelegates: [
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale("ar", "AE"), // OR Locale('ar', 'AE') OR Other RTL locales
      ],
      locale: Locale("ar", "AE"),
      theme: ThemeData(
        fontFamily: 'Almarai',
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> title = ['عملية الري','معلومات','حول التطبيق','المبرمج'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('عملية الري عن طريق البلوتوث'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: EdgeInsets.only(right: 5),
                width: MediaQuery.of(context).size.width/2,
                height: 150,
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => BluetoothApp()));
                  },
                    child: Card(
                    child: Container(
                      padding: EdgeInsets.only(top: 10,bottom: 10),
                      child: Center(child: 
                      Column(
                        children: [
                          Image.asset('assets/19-512.png',height: 90,),
                          SizedBox(height: 10,),
                          Text(title[0]),
                        ],
                      ))),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 5),
                width: MediaQuery.of(context).size.width/2,
                height: 150,
                child: InkWell(
                  onTap: (){
                     Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => AboutPage()));
                  },
                                  child: Card(
                    child: Container(
                      padding: EdgeInsets.only(top: 10,bottom: 10),
                      child: Center(child: Column(
                        children: [
                          Image.asset('assets/info.png',height: 90,),
                          SizedBox(height: 10,),
                          Text(title[1]),
                        ],
                      ))),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(right: 5),
                width: MediaQuery.of(context).size.width/2,
                height: 150,
                child: InkWell(
                  onTap: (){
                     Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => InfoPage()));
                  },
                                  child: Card(
                    child: Container(
                      padding: EdgeInsets.only(top: 10,bottom: 10),
                      child: Center(child: Column(
                        children: [
                          Image.asset('assets/aboutapp.png',height: 90,),
                          SizedBox(height: 10,),
                          Text(title[2]),
                        ],
                      ))),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 5),
                width: MediaQuery.of(context).size.width/2,
                height: 150,
                child: InkWell(
                  onTap: (){
                          showModalBottomSheet(
                          context: context,
                          shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                          top: Radius.circular(25.0))),
                          isScrollControlled: true,
                          builder: (context)=> Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.mail_outline , size: 100,),
                                SizedBox(height: 20,),
                                Text('المبرمج : محمد عوض دويداء'),
                                SizedBox(height: 10,),
                                Text('الايميل : mahmmd.a.d@gmail.com'),
                                SizedBox(height: 20,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    OutlineButton(onPressed:() {
                                      final Uri _emailLaunchUri = Uri(
                                          scheme: 'mailto',
                                          path: 'mahmmd.a.d@gmail.com',
                                          queryParameters: {
                                            'subject': 'تواصل عن طريق تطبيق المزرعة الذكية'
                                          }
                                      );

                                        launch(_emailLaunchUri.toString()).catchError((onError)=>{
                                        Toast.show("لا يوجد برنامج بريد للمراسلة", context, duration: Toast.LENGTH_LONG, gravity:  Toast.BOTTOM)

                                        });

                                    },
                                      child: Text('مراسلة'),),
                                    OutlineButton(onPressed: () {
                                      Navigator.of(context).pop();
                                    },child: Text('موافق'),),
                                  ],
                                )
                              ],
                            ),
                          )
                          );
                  },
                  child: Card(
                    child: Container(
                        padding: EdgeInsets.only(top: 10,bottom: 10),
                        child: Center(child: Column(
                          children: [
                            Icon(Icons.mail_outline , size: 90,),
                            SizedBox(height: 10,),
                            Text(title[3]),
                          ],
                        ))),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}