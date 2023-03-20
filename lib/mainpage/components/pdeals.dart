import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  const Screen({super.key, required this.mainimage, required this.mtext, required this.price});

  final String mainimage;
  final String mtext;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        
        height: 300,
        width: 150,
        decoration: BoxDecoration(                                                                                                     
          
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
        
          children: [
            Image.asset(mainimage),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
               
                children: [
                  Text(mtext, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
              SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      price,
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    Image.asset('assets/images/Group 47392.png')
                  ],
                ),
                SizedBox(height: 10,),
                  SizedBox(
                  height: 36,
                  width: 130,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          side: MaterialStateProperty.all(
                              BorderSide(color: Color(0xffFDAA5D))),
                          // iconColor: MaterialStateProperty.all(Color(0xffFDAA5D)),
                          backgroundColor: MaterialStateProperty.all(Colors.white),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadiusDirectional.circular(12)))),
                      onPressed: () {},
                      child: Text(
                        'Add to cart',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffFDAA5D)),
                      )),
                ),
                ],
                    ),
            ),
        
          ],
        ),
      ),
    );
  }
}