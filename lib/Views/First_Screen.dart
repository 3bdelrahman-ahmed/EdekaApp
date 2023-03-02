// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, use_key_in_widget_constructors, unused_import

import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:shopapp_1/Commponents/Containers_Design.dart';
import 'package:shopapp_1/Views/Fruits_Screen.dart';
import 'package:shopapp_1/Views/Market_Screen.dart';

import 'Bakery_Screen.dart';
import 'Vegetables_Screen.dart';

class FirstScreen extends StatefulWidget{
  
  @override
  State<FirstScreen> createState() => RootAppState();
  
}
    int current=0;
   double total=0;
class RootAppState extends State<FirstScreen> {
   
  List<String>items=['Fruits','Bakery','vegtabels','market','test','test'];
  List<IconData>l=[CommunityMaterialIcons.fruit_grapes_outline,CommunityMaterialIcons.bread_slice_outline,Icons.food_bank,Icons.egg_alt_outlined,Icons.ac_unit_outlined,Icons.accessibility_new_outlined];
  List<Widget>w=[FruitsScreen(),BakreyScreen(),VegetablesScreen(),MarketScreen(),FruitsScreen(),FruitsScreen()];
  @override
  Widget build(BuildContext context) {
    
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
            children: [
              IconButton(onPressed:() {
                Null;
              },  icon:const Icon(Icons.line_weight_rounded,
              color: Colors.black,
              ) ),
              Container(
                margin: const EdgeInsets.only(left: 75),
                width: 130,
                height: 90,
                child: Image.asset('assets/edeka.png',
                scale: 0.7,
                )
              ),
              Container(
                margin: const EdgeInsets.only(left: 35),
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color.fromARGB(255, 188, 245, 209)
                ),
                child: Icon(Icons.arrow_forward,
                color: Colors.blue[900],
                ),
              ),
               Container(
                margin: const EdgeInsets.only(left: 10),
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color.fromARGB(255, 188, 245, 209)
                ),
                child: Icon(Icons.favorite_border_outlined,
                color: Colors.red[900],
                ),
              )
            ],
          ),
        ),
        body:
         Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 330,
                    height: 45,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(13)),
                      color: Color.fromARGB(255, 188, 245, 209)
                    ),
                    child: Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: const [
                          Icon(Icons.search_outlined,
                          color: Colors.black,
                          size: 30,
                          ),
                          Expanded(child: 
                          TextField(
                        decoration: InputDecoration(
                          hintText: 'Search here',
                          border: InputBorder.none
                        ),
                          )
                       ),
                       ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 5,),
                  Container(
                    width: 45,
                    height: 45,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      color: Color.fromARGB(255, 188, 245, 209)
                    ),
                    child: const Icon(Icons.filter_list_outlined,
                    color: Colors.black,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 15,),
              Container(
                width: 340,
                height: 100,
                child: Row(
                  children: [
                    Expanded(  
                      child: ListView.builder(
                        itemCount: 6,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (ctx,index)
                       {
           return GestureDetector(
            onTap: () {
              setState(
              () {
            current=index;
                }
                );
               },
             child: Column(
                   children: [
                 AnimatedContainer(
                  duration: Duration(microseconds: 100),
                     margin: const EdgeInsets.all(6),
               width: 70,
                height: 70,
               decoration:  BoxDecoration(
                  color: current==index? Colors.green:Colors.white,
                  border: current==index?Border.all(color: Colors.blue):Border.all(color: Colors.black),
                 borderRadius: BorderRadius.all(Radius.circular(8))
                  ),
              child: Icon(l[index],
              color: current!=index?Colors.green:Colors.white,
              size: 35,
              ),
              ),
                Text(items[index],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
                ),
                 ],
                                  
                    ),  
                    );
                   }
               )
              ),
           ],
                ),
              ),
              SizedBox(height: 15,),
            Row(
              children: [
                w[current]
              ],
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              height: 42,
              width: 380,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 239, 254, 192),
                borderRadius: BorderRadius.all(Radius.circular(5))
              ),
              child: Row(
                children:  [

                 Expanded(
                  flex: 2,
                   child: Text('Total : ',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                 ),
                //  SizedBox(width: 5,),
                  Expanded(
                    flex: 2,
                    child: Text('$total',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                    ),
                  ),
                 // SizedBox(width: 180,),
                  Expanded(
                    flex: 2,
                    child: Container(
                      width:80,
                      height: 42,
                      decoration:  BoxDecoration(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomLeft: Radius.circular(5),bottomRight: Radius.circular(5)),
                        color: Colors.blue[900]
                      ),
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: const[
                          Text('Cart',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                          ),
                          Icon(Icons.shopping_cart_outlined,
                          color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
            ],
          ),
        ),
      );
  }
}