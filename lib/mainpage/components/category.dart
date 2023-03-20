import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({
    super.key, required this.backgroundcolor, required this.image, required this.ctext,
  });

  final Color backgroundcolor;
  final String image;
  final String ctext;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
        height: 90,
        width: 96,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: backgroundcolor,
          
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(top: 15),
            child: Column(
              children: [
                Image.asset(image),
                SizedBox(height: 10,),
                 Text(ctext, style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  
                ),)
              ],
            ),
          ),
        ),);
  }
}
