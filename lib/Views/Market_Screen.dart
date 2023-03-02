import 'package:flutter/material.dart';

import '../Commponents/Containers_Design.dart';

class MarketScreen extends StatefulWidget{
  @override
  State<MarketScreen> createState() => _MarketScreenState();
}

class _MarketScreenState extends State<MarketScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
            ContainerDesign('Milk','fresh','8.85',const AssetImage('assets/milk.jpg')),
            ContainerDesign('Chesse','fresh','2.9',const AssetImage('assets/ch.jpg')),
                          ],
                        ),
                        Row(
                          children: [
            ContainerDesign('Eggs','fresh','1.55',const AssetImage('assets/egg.jpg')),
            ContainerDesign('Catshup','fresh','4.56',const AssetImage('assets/ca.jpeg')),
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