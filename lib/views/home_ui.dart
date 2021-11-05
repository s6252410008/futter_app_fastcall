import 'package:flutter/material.dart';
import 'package:flutter_app_fastcall/views/cafe_ui.dart';
import 'package:flutter_app_fastcall/views/frak_ui.dart';
import 'package:flutter_app_fastcall/views/ptt_ui.dart';
import 'package:flutter_app_fastcall/views/r_ui.dart';
import 'package:flutter_app_fastcall/views/tavel_ui.dart';
import 'package:flutter_app_fastcall/views/wat_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeUI extends StatelessWidget {
  const HomeUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('ท่องไทย'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
          
            SizedBox(
                height: 50.0,
              ),
            Image.asset(
                'assets/images/tavel_logo.jpg',
                width: 350.0,
                
              ),
            SizedBox(
                height: 20.0,
              ),
            Padding(
              padding: const EdgeInsets.only(
                left: 50.0,
                right: 50.0,
              ),
              child: ElevatedButton.icon(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TavelUI(),
                    ),
                  );
                },
                icon: Icon(
                        FontAwesomeIcons.plane,
                      ),
                      label: Text('ท่องเที่ยวคลิก'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.redAccent,
                        fixedSize: Size(
                          130.0,
                          50.0,
                        ),
                      ),
                    ),
            ),
            SizedBox(
                height: 80.0,
              ),
            Padding(
              padding: const EdgeInsets.only(
                left: 40.0,
                right: 40.0,
              ),
              child: Image.asset(
                  'assets/images/r_logo.jpg',
                  width: 350.0,
                  
                ),
            ),
            SizedBox(
                height: 20.0,
              ),
            Padding(
              padding: const EdgeInsets.only(
                left: 50.0,
                right: 50.0,
              ),
              child: ElevatedButton.icon(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => rUI(),
                    ),
                  );
                },
                icon: Icon(
                        FontAwesomeIcons.utensils,
                      ),
                      label: Text('ร้านอาหารคลิก'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green[400],
                        fixedSize: Size(
                          130.0,
                          50.0,
                        ),
                      ),
                    ),
            ),
            SizedBox(
                height: 80.0,
              ),
            Image.asset(
                'assets/images/wat_logo1.jpg',
                width: 350.0,
                
              ),
            SizedBox(
                height: 20.0,
              ),
            Padding(
              padding: const EdgeInsets.only(
                left: 50.0,
                right: 50.0,
              ),
              child: ElevatedButton.icon(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WatUI(),
                    ),
                  );
                },
                icon: Icon(
                        FontAwesomeIcons.synagogue,
                      ),
                      label: Text('   เที่ยววัด'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.yellow[700],
                        fixedSize: Size(
                          130.0,
                          50.0,
                        ),
                      ),
                    ),
            ),
            SizedBox(
                height: 80.0,
              ),
            Image.asset(
                'assets/images/cafe_logo1.jpg',
                width: 350.0,
                
              ),
            SizedBox(
                height: 20.0,
              ),
            Padding(
              padding: const EdgeInsets.only(
                left: 50.0,
                right: 50.0,
              ),
              child: ElevatedButton.icon(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CafeUI(),
                    ),
                  );
                },
                icon: Icon(
                        FontAwesomeIcons.coffee,
                      ),
                      label: Text( 'ร้านกาแฟคลิก'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.brown[700],
                        fixedSize: Size(
                          130.0,
                          50.0,
                        ),
                      ),
                    ),
            ),
            SizedBox(
                height: 80.0,
              ),
            Image.asset(
                'assets/images/frak_logo.jpg',
                width: 350.0,
                
              ),
            SizedBox(
                height: 20.0,
              ),
            Padding(
              padding: const EdgeInsets.only(
                left: 50.0,
                right: 50.0,
              ),
              child: ElevatedButton.icon(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FrakUI(),
                    ),
                  );
                },
                icon: Icon(
                        FontAwesomeIcons.boxOpen,
                      ),
                      label: Text( 'ซื้อของฝากคลิก'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.pink[300],
                        fixedSize: Size(
                          130.0,
                          50.0,
                        ),
                      ),
                    ),
            ),
            SizedBox(
                height: 80.0,
              ),
            Image.asset(
                'assets/images/ptt_logo.jpg',
                width: 350.0,
                
              ),
            SizedBox(
                height: 20.0,
              ),
            Padding(
              padding: const EdgeInsets.only(
                left: 50.0,
                right: 50.0,
              ),
              child: ElevatedButton.icon(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PttUI(),
                    ),
                  );
                },
                icon: Icon(
                        FontAwesomeIcons.carAlt,
                      ),
                      label: Text( 'จุดพักรถคลิก'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.pink[300],
                        fixedSize: Size(
                          130.0,
                          50.0,
                        ),
                      ),
                    ),
            ),
            SizedBox(
                height: 80.0,
              ),
          
          
          
          
          
          
          
          
          
          
          
          
          ],
        ) ,
      ),


    );
  }
}
