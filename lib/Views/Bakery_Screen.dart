import 'package:flutter/material.dart';

import '../Commponents/Containers_Design.dart';


class BakreyScreen extends StatefulWidget{
  @override
  State<BakreyScreen> createState() => _BakreyScreenState();
}

class _BakreyScreenState extends State<BakreyScreen> {
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
            ContainerDesign('Cinapun','fresh','3.12',const AssetImage('assets/cin.jpeg')),
            ContainerDesign('Cookies','fresh','2.9',const AssetImage('assets/cok.jpeg')),
                          ],
                        ),
                        Row(
                          children: [
            ContainerDesign('Cupcake','fresh','1.55',const AssetImage('assets/cup.jpeg')),
            ContainerDesign('Bills','fresh','1.56',const AssetImage('assets/bills.jpg')),
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