import 'package:flutter/material.dart';
import 'package:flutter_app_fastcall/models/foodlist.dart';
import 'package:flutter_app_fastcall/views/listfood_detail_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class CafeUI extends StatefulWidget {
  const CafeUI({ Key? key }) : super(key: key);

  @override
  _ListFoodNewUIState createState() => _ListFoodNewUIState();
}

class _ListFoodNewUIState extends State<CafeUI> {
  List<FoodList> foodList = [
    
    
    FoodList(
name: ' ครัวโอซี',
website: '  -',
facebook: ' ครัวโอซีOrigina',
mobile: ' 094 666 3565',
image: 'r_logo_1.jpg',
pikat: 'https://goo.gl/maps/N614aim4N8Woh53y7',
),
    FoodList(
name: 'ร้าน จีโน่ สเต็ก',
website: '  -',
facebook: ' ร้าน จีโน่ สเต็ก',
mobile: ' 0621634699',
image: 'r_logo_2.jpg',
pikat: 'hhttps://goo.gl/maps/oXWtiNHoJ7TqRZbV8',
),
    FoodList(
name: 'บ้านสวนริมคลอง',
website: '  -',
facebook: 'บ้านสวนริมคลอง',
mobile: ' 0612543322',
image: 'r_logo_3.jpg',
pikat: 'https://goo.gl/maps/56S3BUppfoHVWXPb9',
),
   
   
]; 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
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