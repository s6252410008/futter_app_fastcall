import 'package:flutter/material.dart';
import 'package:flutter_app_fastcall/models/foodlist.dart';
import 'package:flutter_app_fastcall/views/listfood_detail_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class TavelUI extends StatefulWidget {
  const TavelUI({ Key? key }) : super(key: key);

  @override
  _ListFoodNewUIState createState() => _ListFoodNewUIState();
}

class _ListFoodNewUIState extends State<TavelUI> {
  List<FoodList> foodList = [
    
    
    FoodList(
name: 'ไร่เหมืองจันทร์',
website: 'ไร่เหมืองจันทร์.com',
facebook: 'ไร่เหมืองจันทร์',
mobile: '0811686565',
image: 'tavel_logo_1.jpg',
pikat: 'https://goo.gl/maps/UALx6Vjfckt98xKE6',
),
    FoodList(
name: 'นาบัวลุงแจ่ม',
website: 'นาบัวลุงแจ่ม.com',
facebook: 'นาบัวลุงแจ่ม & Jam Cafe',
mobile: '0878281892',
image: 'tavel_logo_2.jpg',
pikat: 'https://goo.gl/maps/jyH26VaJjNqsBpCh9',
),
    FoodList(
name: 'สวนคุณลุงบุญเลิศ',
website: '-',
facebook: 'สวนคุณลุงบุญเลิศ',
mobile: '0890571432',
image: 'tavel_logo_3.jpg',
pikat: 'https://goo.gl/maps/hispCkcqSbmQzjka6',
),
    FoodList(
name: 'ชุมชนพี่เสื้อ',
website: '-',
facebook: 'ชุมชนคลองผีเสื้อ',
mobile: '-',
image: 'tavel_logo_4.jpg',
pikat: 'https://goo.gl/maps/DnVKAGiF1uq3oXUQA',
),
   
]; 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        leading: IconButton(
          onPressed: (){},
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.search,
            ),
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.camera_alt,
            ),
          ),
        
        
        
        ],
        


      ),
      body: Column(
        children: [
          
          
          Expanded(
            child: ListView.separated(
              itemCount: foodList.length,
              separatorBuilder: (context, index){
                return Divider(
                  height: 50.0,
                  color: Colors.teal,
                );
              },
              itemBuilder: (context, index){
                return ListTile(
                  onTap: (){
                    //เปิดไปหน้า ListfoodDetailUI
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context){
                          // ที่หน้า ListfoodDetailUI มีการสร้างตัวแปรรับค่า
                          // ดั้งนั้นในการเปิดไปหน้า ListfoodDetailUI เราจึงต้องส่งข้อมูลไปด้วย
                          return ListFoodDetailUI(
                            name: foodList[index].name,
                            website: foodList[index].website,
                            facebook: foodList[index].facebook,
                            mobile: foodList[index].mobile,
                            image: foodList[index].image,
                            pikat: foodList[index].pikat,
                          
                          );
                        },
                      ),
                    );



                  },
                  title: Text(
                    foodList[index].name,
                  ),
                  subtitle: Text(
                    foodList[index].name,
                  ),
                  leading: Container(
                    
                    child: Image.asset(
                      'assets/images/' + foodList[index].image,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                  ),
                );
              },
          
              
          
            ),
          ),
        ],
      ),
    );
  }
}