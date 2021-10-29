import 'package:flutter/material.dart';
import 'package:flutter_app_fastcall/models/foodlist.dart';
class ListFoodUI extends StatefulWidget {
  const ListFoodUI({ Key? key }) : super(key: key);

  @override
  _ListFoodUIState createState() => _ListFoodUIState();
}

class _ListFoodUIState extends State<ListFoodUI> {
  List<FoodList> foodList = [
    FoodList(
name: 'Chesters Grill',
website: 'http://www.chesters.co.th',
facebook: 'chesterthai',
mobile: '1145',
image: 'f1.jpg',
pikat: 'https://goo.gl/maps/Qq2ZYB9Uvu2hjwpy5',
),
    FoodList(
name: 'Narai Pizzeria',
website: 'http://www.naraipizzeria.com',
facebook: 'naraipizzeria',
mobile: '1744',
image: 'f2.jpg',
pikat: 'https://goo.gl/maps/ZrvUnmKzMQkAg88A8',
),
    FoodList(
name: 'S&P',
website: 'http://www.snpfood.com',
facebook: 'snpfood',
mobile: '1344',
image: 'f3.jpg',
pikat: 'https://goo.gl/maps/zDdGJkuW1gvzTLR7A',
),
    FoodList(
name: 'Oishi',
website: 'http://www.oishifood.com',
facebook: 'oishifoodstation',
mobile: '1773',
image: 'f4.jpg',
pikat: 'https://goo.gl/maps/DeNjxbr4Bp7mfPgt8',
),
    FoodList(
name: 'MK Restaurants',
website: 'http://www.mkrestaurant.com',
facebook: 'mkrestaurants',
mobile: '02-248-5555',
image: 'f5.jpg',
pikat: 'https://goo.gl/maps/ZW3KBuQVmNZ9ocnA7',
),
    FoodList(
name: 'The Pizza',
website: 'http://www.1112.com',
facebook: 'thepizzacompany',
mobile: '1112',
image: 'f6.jpg',
pikat: 'https://goo.gl/maps/4LQVxNtvzWkCdfRXA',
),
    FoodList(
name: 'Mc Donals',
website: 'http://www.mcdonalds.co.th',
facebook: 'McThai',
mobile: '1711',
image: 'f7.jpg',
pikat: 'https://goo.gl/maps/x4HvfWfgkyb2xmMFA',
),
    FoodList(
name: 'Pizza Hut',
website: 'http://www.pizzahut.co.th',
facebook: 'pizzahutthailand',
mobile: '1150',
image: 'f8.jpg',
pikat: 'https://goo.gl/maps/oFwGRd6qX2yDz61N9',
),
    FoodList(
name: 'KFC',
website: 'http://www.kfc.co.th',
facebook: 'kfcth',
mobile: '1150',
image: 'f9.jpg',
pikat: 'https://goo.gl/maps/vbXYTUvJY3pAYCjD9',
),
    FoodList(
name: 'JJ Delivery',
website: 'http://www.jjdelivery.com',
facebook: 'jjdelivery',
mobile: '02-712-3000',
image: 'f10.jpg',
pikat: 'https://goo.gl/maps/6AZRhq9GLUMshsL79',
),
    FoodList(
name: 'Burger King',
website: 'http://www.burgerking.co.th',
facebook: 'burgerkingthailand',
mobile: '1112',
image: 'f11.jpg',
pikat: 'https://goo.gl/maps/7tBL1HbA9kn4E7PV7',
),
    FoodList(
name: 'See Fah',
website: 'http://www.seefah.com',
facebook: 'seefahfanpage',
mobile: '02-800-8080',
image: 'f12.jpg',
pikat: 'https://goo.gl/maps/nV91tZuuP5UEjWRm9',
),
    FoodList(
name: 'ฮองมิน',
website: 'http://www.hongminrestaurant.net',
facebook: 'hongminfanpage',
mobile: '02-248-0123',
image: 'f13.jpg',
pikat: 'https://goo.gl/maps/JThJmfTsJysfSRSa9',
),
    FoodList(
name: 'Yoshinoya',
website: 'http://www.yoshinoya.co.th',
facebook: 'YoshinoyaThailand',
mobile: '02-663-3888',
image: 'f14.jpg',
pikat: 'https://goo.gl/maps/7bTG4848j7REwpsh7',
),
    FoodList(
name: 'ฮั่วเซ่งฮง',
website: 'http://www.huasenghong.co.th',
facebook: 'huasenghong',
mobile: '02-2480123',
image: 'f15.jpg',
pikat: 'https://goo.gl/maps/MrREokNCU7UEHunt7',

),
    FoodList(
name: 'Scoozi Pizza',
website: 'http://www.scoozipizza.com',
facebook: 'scoozipizzaclub',
mobile: '02-715-8555',
image: 'f16.jpg',
pikat: 'https://goo.gl/maps/wydTYYcPLRBowqqt5',
),
    FoodList(
name: 'โดมิโน่ พิซซ่า',
website: 'http://www.dominospizza.co.th',
facebook: 'DominosPizzaThailand',
mobile: '1612',
image: 'f17.jpg',
pikat: 'https://goo.gl/maps/Gw61PzAjT32c5TuY9',
),
]; 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text(
          'Food List ร้านยอดฮิต',
        ),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: ListView.separated(
        itemCount: foodList.length,
        separatorBuilder: (context, index){
          return Divider(
            height: 10.0,
            color: Colors.teal,
          );
        },
        itemBuilder: (context, index){
          return ListTile(
            onTap: (){},
            title: Text(
              foodList[index].name,
            ),
            subtitle: Text(
              foodList[index].name,
            ),
            leading: Image.asset(
              'assets/images/' + foodList[index].image,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
            ),
          );
        },

        

      ),
    );
  }
}