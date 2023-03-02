import 'package:flutter/material.dart';

import '../Commponents/Containers_Design.dart';


class VegetablesScreen extends StatefulWidget{
  @override
  State<VegetablesScreen> createState() => _VegetablesScreenState();
}

class _VegetablesScreenState extends State<VegetablesScreen> {
  @override
  Widget build(BuildContext context) {
  return  Column(
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
            ContainerDesign('Onion','fresh','1.85',const AssetImage('assets/on.jpg')),
            ContainerDesign('Tomatoe','fresh','2.9',const AssetImage('assets/tom.jpg')),
                          ],
                        ),
                        Row(
                          children: [
            ContainerDesign('Carrot','fresh','1.55',const AssetImage('assets/car.png')),
            ContainerDesign('Brinjal','fresh','0.56',const AssetImage('assets/brin.png')),
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