import 'package:flutter/material.dart';
import 'package:flutter_app_fastcall/models/foodlist.dart';
import 'package:flutter_app_fastcall/views/listfood_detail_ui.dart';
class ListFoodNewUI extends StatefulWidget {
  const ListFoodNewUI({ Key? key }) : super(key: key);

  @override
  _ListFoodNewUIState createState() => _ListFoodNewUIState();
}

class _ListFoodNewUIState extends State<ListFoodNewUI> {
  List<FoodList> foodList = [
    FoodList(
name: 'Chesters Grill',
website: 'http://www.chesters.co.th',
facebook: 'chesterthai',
mobile: '1145',
image: 'f1.jpg',
),
    FoodList(
name: 'Narai Pizzeria',
website: 'http://www.naraipizzeria.com',
facebook: 'naraipizzeria',
mobile: '1744',
image: 'f2.jpg',
),
    FoodList(
name: 'S&P',
website: 'http://www.snpfood.com',
facebook: 'snpfood',
mobile: '1344',
image: 'f3.jpg',
),
    FoodList(
name: 'Oishi',
website: 'http://www.oishifood.com',
facebook: 'oishifoodstation',
mobile: '1773',
image: 'f4.jpg',
),
    FoodList(
name: 'MK Restaurants',
website: 'http://www.mkrestaurant.com',
facebook: 'mkrestaurants',
mobile: '02-248-5555',
image: 'f5.jpg',
),
    FoodList(
name: 'The Pizza',
website: 'http://www.1112.com',
facebook: 'thepizzacompany',
mobile: '1112',
image: 'f6.jpg',
),
    FoodList(
name: 'Mc Donals',
website: 'http://www.mcdonalds.co.th',
facebook: 'McThai',
mobile: '1711',
image: 'f7.jpg',
),
    FoodList(
name: 'Pizza Hut',
website: 'http://www.pizzahut.co.th',
facebook: 'pizzahutthailand',
mobile: '1150',
image: 'f8.jpg',
),
    FoodList(
name: 'KFC',
website: 'http://www.kfc.co.th',
facebook: 'kfcth',
mobile: '1150',
image: 'f9.jpg',
),
    FoodList(
name: 'JJ Delivery',
website: 'http://www.jjdelivery.com',
facebook: 'jjdelivery',
mobile: '02-712-3000',
image: 'f10.jpg',
),
    FoodList(
name: 'Burger King',
website: 'http://www.burgerking.co.th',
facebook: 'burgerkingthailand',
mobile: '1112',
image: 'f11.jpg',
),
    FoodList(
name: 'See Fah',
website: 'http://www.seefah.com',
facebook: 'seefahfanpage',
mobile: '02-800-8080',
image: 'f12.jpg',
),
    FoodList(
name: 'ฮองมิน',
website: 'http://www.hongminrestaurant.net',
facebook: 'hongminfanpage',
mobile: '02-248-0123',
image: 'f13.jpg',
),
    FoodList(
name: 'Yoshinoya',
website: 'http://www.yoshinoya.co.th',
facebook: 'YoshinoyaThailand',
mobile: '02-663-3888',
image: 'f14.jpg',
),
    FoodList(
name: 'ฮั่วเซ่งฮง',
website: 'http://www.huasenghong.co.th',
facebook: 'huasenghong',
mobile: '02-2480123',
image: 'f15.jpg',
),
    FoodList(
name: 'Scoozi Pizza',
website: 'http://www.scoozipizza.com',
facebook: 'scoozipizzaclub',
mobile: '02-715-8555',
image: 'f16.jpg',
),
    FoodList(
name: 'โดมิโน่ พิซซ่า',
website: 'http://www.dominospizza.co.th',
facebook: 'DominosPizzaThailand',
mobile: '1612',
image: 'f17.jpg',
),
]; 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[50],
      appBar: AppBar(
        title: Text(
          'ร้านยอดนิยม',
        ),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.3,
            child: Image.asset(
              'assets/images/fastfood.png',
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: foodList.length,
              separatorBuilder: (context, index){
                return Divider(
                  height: 10.0,
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
                          return ListFoodDetailUI(
                            foodListDetail: foodList[index],
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