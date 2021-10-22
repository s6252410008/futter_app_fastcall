import 'package:flutter/material.dart';
import 'package:flutter_app_fastcall/models/foodlist.dart';
class ListFoodDetailUI extends StatefulWidget {
  late FoodList foodlistDetail;


  ListFoodDetailUI({ Key? key,required FoodList foodListDetail }) : super(key: key);

  @override
  _ListFoodDetailUIState createState() => _ListFoodDetailUIState();
}

class _ListFoodDetailUIState extends State<ListFoodDetailUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[50],
      appBar: AppBar(
        title: Text(
          'รายละเอียดร้าน',
        ),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50.0,
              ),
              Image.asset(
                'assets/images/f1.jpg',
              ),
            
            
            
            ],
          ),
        ),
      ),
    );
  }
}