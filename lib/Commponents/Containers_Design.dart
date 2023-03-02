// ignore: file_names
// ignore: file_names
// ignore_for_file: use_key_in_widget_constructors, prefer_initializing_formals, unused_import, unnecessary_this

import 'dart:ui';

import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shopapp_1/Views/First_Screen.dart';

class ContainerDesign extends StatefulWidget{
  final String text1;
  final AssetImage image;
  final String text2;
  final String text3;
  ContainerDesign(this.text1,this.text2,this.text3,this.image);
  @override
  State<ContainerDesign> createState() => ContainerDesignState(  );
}

class ContainerDesignState extends State<ContainerDesign> {
  


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    
    return Container(
        padding: const EdgeInsets.only(left: 10,top: 15),
      child: Container(
        height: 250,
        width: 180,
        decoration: const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(15))
        ),
        child: Column(
          children: [
            Stack(
              children: [
               const SizedBox(height: 5,),
                Container(
                  margin: const EdgeInsets.only(top: 5),
                  width: 170,
                  height: 160,
                  decoration:const BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 234)
                  ) ,
                  child: Image(image: widget.image,
                  fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            Text(widget.text1,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            ),
            Text(widget.text2,
            style: const TextStyle(fontSize: 16,
            fontWeight: FontWeight.w600
            ),
            ),
            const SizedBox(height: 10,),
            Row(
              children: [
             const   SizedBox(width:15,),
                const Text('\$',
                style: TextStyle(
                  fontSize: 15,
                ),
                ),
                SizedBox(width: 20,),
                Text(widget.text3,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.green,
                ),
                ),
              const  SizedBox(width: 45,),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      total+=double.parse(widget.text3);
                    });
                  },
                  child: Container(
                    width: 50,
                    height: 30,
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(5))
                    ),
                    child: const Icon(Icons.plus_one_rounded,
                    color: Colors.white,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
}
}