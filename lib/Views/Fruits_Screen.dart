import 'package:flutter/material.dart';
import 'package:shopapp_1/Commponents/Containers_Design.dart';


class FruitsScreen extends StatefulWidget{
  @override
  State<FruitsScreen> createState() => _FruitsScreenState();
}

class _FruitsScreenState extends State<FruitsScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 380,
          width: 380,
          child: Row(
            children: [
              Expanded(
                child:
                  ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                        Row(
                          children: [
            ContainerDesign('Banana','fresh','1.55',const AssetImage('assets/banana.png')),
            ContainerDesign('Stawberry','fresh','2.78',const AssetImage('assets/hamedo.png')),
                          ],
                        ),
                        Row(
                          children: [
            ContainerDesign('Grapes','fresh','1.55',const AssetImage('assets/grapes.jpg')),
            ContainerDesign('Apple','fresh','1.70',const AssetImage('assets/apple.jpg')),
                          ],
                        ),
                    ],
                  ),
              
              ),
            ],
          ),
        ),
      ],
    );
  }
}