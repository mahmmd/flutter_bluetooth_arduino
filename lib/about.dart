import 'package:flutter/material.dart';



class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('التقويم الزراعي بحضرموت'),
        centerTitle: true,
      ),
      body:ListView(
        padding: EdgeInsets.all(5),
              // textDirection: TextDirection.ltr,
              children: [
                // Text('التقويم الزراعي بحضرموت',
                // style: TextStyle(
                //   fontSize: 20
                // ),
                // ),
                SizedBox(height: 5,),
                Text('نظام الحساب بالنجوم معروف في وادي حضرموت وخاصة لدى المزارعين الذين يعتمدون على النجوم كمواعيد في الزراعة ، وتضم السنة الميلادية (28) نجما ، كل فصل من فصول السنة يحتوي على (7) نجوم ، مدة النجم الواحد (13) يوما ماعدا النجم الاخير في السنة (الهقعة) فمدته (14) يوما .',
                  style: TextStyle(
                    height: 1.5
                  ),
                ),
                SizedBox(height: 10,),
                title(' فصل الربيع :'),
                SizedBox(height: 5,),
                pargraph('الهنعة : 1 يناير الى 13 يناير (باميا + باباي + فلفل + بطيطا + كوسة + ورقيات + حناء + شبرم + حبة سوداء.)'),
                SizedBox(height: 5,),
                pargraph('الذراع : 14 يناير الى 26 يناير ( القرعيات بأنواعه + طماطم +باذنجان + فلفل +حناء  باميا + بطيطا + ورقيات + شبرم + حبة سوداء   )'),
                SizedBox(height: 5,),
                pargraph(' النثرة : 27 يناير الى 8 فبراير (القرعيات بأنواعها + طماطم + باذنجان + فلفل +بصل  +باميا + ورقيات + فول سوداني) '),
                SizedBox(height: 5,),
                pargraph('الطرف : 9 فبراير الى 21 فبراير ( ليم حامض + نخيل + باميا + ورقيات + شبرم + سمسم + باذنجان +طماطم + فول سوداني  والقرعيات بأنواعها + بصل بافطيم) '),
                SizedBox(height: 5,),
                pargraph('الجبهة : 22 فبراير الى 6 مارس (سمسم + بصل + طماطم + باميا + فلفل + شبرم+نخيل ) '),
                SizedBox(height: 5,),
                pargraph('الزبرة : 7 مارس الى 19 مارس (ذرةصيفية + نخيل سمسم + بصل + طماطم + باميا + فلفل + شبرم)'),
                SizedBox(height: 5,),
                pargraph('الصرفة : 20 مارس الى 1 ابريل ( ذرةصيفية + باميا) '),
                SizedBox(height: 10,),
                title('فصل الصيف :'),
                SizedBox(height: 5,),
                pargraph('العوى : 2ابريل الى 14 ابريل (ذرةصيفية ) '),
                SizedBox(height: 5,),
                pargraph('السماك : 15 ابريل الى 27 ابريل  لوبيا الدجر'),
                SizedBox(height: 5,),
                pargraph(' الزبان : 11 مايو الى 23 مايو '),
                SizedBox(height: 5,),
                pargraph('الأكليل : 24ماو الى 5 يونيو  '),
                SizedBox(height: 5,),
                pargraph('القلب : 6 يونيو الى 18 يونيو   ( الشول )'),
                SizedBox(height: 10,),
                title('فصل الخريف :'),
                SizedBox(height: 5,),
                pargraph('النعائم  : 2 يوليو الى 14 يوليو (سمسم +باميا + كنب)  '),
                SizedBox(height: 5,),
                pargraph('البلدة : 15 يوليو الى 27 يوليو (ذرة شتوية + باميا )'),
                SizedBox(height: 5,),
                pargraph('المزرم : 28 يوليو الى 9 أغسطس (ذرة شتوية + باميا) '),
                SizedBox(height: 5,),
                pargraph(' سهيل : 10 أغسطس الى 22 أغسطس ( ذرة شتوية +بصل بافطيم + طماطم + فلفل + ورقيات)  '),
                SizedBox(height: 5,),
                pargraph('باعريق : 23 أغسطس الى 4 سبتمبر ( بصل بافطيم + طماطم + فلفل + الورقيات + شبرم سعد)  '),
                SizedBox(height: 5,),
                pargraph('خباء : 5 سبتمبر الى 17 سبتمبر (برسيم+ باباي + نخيل + الحناء + بطيطا + الورقيات + شبرم + كمون + قرعيات + بصل + طماط)'),
                SizedBox(height: 5,),
                pargraph(' الفرغ : 18سبتمبر الى 30 سبتمبر (برسيم+ باباي + نخيل + الحناء+ بطيطا + الورقيات   +شبرم + كمون + قرعيات + بصل + طماط)'),
                SizedBox(height: 10,),
                title(' فصل الشتاء :'),
                SizedBox(height: 5,),
                pargraph('الدلو : 1 أكتوبر الى 13 أكتوبر ( طماطم  +ثوم + قرعيات + شاهي حومر+ جزر+ حبة سوداء + بطيطا + كمون + شبرم + الورقيات)'),
                SizedBox(height: 5,),
                pargraph('الحوت : 14 أكتوبر الى 26 أكتوبر (قمح محسن ماعدا(كليانسونا)فاصوليا +شاهي حومري + حبة سوداء+ ورقيات + طماطم + الثوم قرعيات +حمص+عدس+ لبلاب(غلفق)+جزر) '),
                SizedBox(height: 5,),
                pargraph(' النطح : 27 أكتوبر الى 8 نوفمبر  (قمح محسن+ فاصوليا + شاهي حومري + حبة سوداء+ ورقيات + طماطم + الثوم+  قرعيات + حمص عدس + فاصوليا خضراء )'),
                SizedBox(height: 5,),
                pargraph(' البطين : 9 نوفمبر الى 21 نوفمبر (قمح محسن+ فاصوليا + شاهي حومري +حبةسوداء + باباي + طماطم+ بطاطس+ ليم حامض) '),
                SizedBox(height: 5,),
                pargraph('  الثرياء : 22 نوفمبر الى 4 ديسمبر ( قمح محسن ما عدا(كليانسونا) + شاهي حومري + حبة سوداء+ باباي + طماطم+ بطاطس)  '),
                SizedBox(height: 5,),
                pargraph('البركان : 5 ديسمبر الى 17 ديسمبر (الذرة الشامية)'),
                SizedBox(height: 5,),
                pargraph('الهقعة : 18 ديسمبر الى 31 ديسمبر (الذرة الشامية * القرعيات  +البطيخ+ الحبحب +الشمام +الدباء + الخيار+ الكوسة + الورقيات  + الكوبيش + الضدح + الفجل(البقل)+الملوخية + الجرجير+ الكراث)'),

              ],
            ),
        
      
        
    );
  }
  Widget title(String title){
    return Text(title , style: TextStyle(fontWeight: FontWeight.bold),);
  }
  Widget pargraph(String text){
    return Text(text,
                style: TextStyle(
                  height: 1.7
                ),
                );
  }
}