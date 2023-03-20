import 'package:flutter/material.dart';
import 'package:hypermart/mainpage/components/pdeals.dart';

import 'components/category.dart';
import 'components/form.dart';
import 'components/popular.dart';

class FirstScreen extends StatefulWidget {
  FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  String? dropdownvalue = 'English';

  var items = [
    'English',
    'Malayalam',
    'Arabic',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                            text: const TextSpan(
                                text: 'Hyper',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xffFDAA5D),
                                ),
                                children: [
                              TextSpan(
                                text: 'Mart',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff4AB7B6),
                                ),
                              )
                            ])),
                        Row(
                          children: [
                            DropdownButton(
                                elevation: 0,
                                value: dropdownvalue,
                                icon: const Icon(Icons.keyboard_arrow_down),
                                items: items.map((String? items) {
                                  return DropdownMenuItem(
                                    value: items,
                                    child: Text(items!),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownvalue = newValue;
                                  });
                                }),
                            Image.asset('assets/images/bell (2) 1.png')
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/images/Group 7 (1).png'),
                            const SizedBox(
                              width: 8,
                            ),
                            const Text('Benglure \nBTM Layout 5006'),
                          ],
                        ),
                        Image.asset('assets/images/Right Arrow 4.png')
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: const Color(0xffEFF1F3),
                          borderRadius: BorderRadius.circular(12)),
                      child: const Textformd(),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 168,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/Mask.png'),
                            fit: BoxFit.cover),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            bottom: 20, top: 65, right: 220),
                        child: Column(
                          children: [
                            const Text(
                              'Happy Weekend',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                            const Text(
                              '25% OFF',
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black),
                            ),
                            const Text(
                              'For All Menus',
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Categories',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                        Image.asset('assets/images/Right Arrow 4.png'),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categorylist.length,
                      itemBuilder: (context, i) {
                        return Categories(
                            backgroundcolor: categorylist[i]['backgroundcolor'],
                            image: categorylist[i]['image'],
                            ctext: categorylist[i]['ctext']);
                      }),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      'Previous Order',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  child: Container(
                    height: 175,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Delivered',
                            style: TextStyle(
                                color: Color(0xff14AB87),
                                fontSize: 10,
                                fontWeight: FontWeight.w700),
                          ),
                          Text('On Wed, 27 Jul 2022'),
                          SizedBox(
                            height: 8,
                          ),
                          Image.asset('assets/images/Group 47391.png'),
                          SizedBox(
                            height: 8,
                          ),
                          Text('Order ID : #28292999'),
                          // SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Final Total : ₹ 123',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w700),
                              ),
                              ElevatedButton(
                                  style: ButtonStyle(
                                      shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                      ),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Color(0xff4AB7B6))),
                                  onPressed: () {},
                                  child: Text('Order Again'))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Deals',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    Image.asset('assets/images/Right Arrow 4.png'),
                  ],
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
        
        height: 300,
        width: 150,
        decoration: BoxDecoration(                                                                                                     
          
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
        
          children: [
            Image.asset('assets/images/Mask group (2).png'),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
               
                children: [
                  Text('Strawberries', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
              SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('₹ 10'
                      ,
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
      Container(
        
        height: 300,
        width: 150,
        decoration: BoxDecoration(                                                                                                     
          
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
        
          children: [
            SizedBox(height: 45,),
            Image.asset('assets/images/Vector (3).png'),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
               
                children: [
                  Text('Fried Chips', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
              SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('₹ 12'
                      ,
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
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                      Container(
        
        height: 300,
        width: 150,
        decoration: BoxDecoration(                                                                                                     
          
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
        
          children: [
            Image.asset('assets/images/Mask group (3).png'),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
               
                children: [
                  Text('Moder Chair', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
              SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('₹ 3599'
                      ,
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
      Container(
        
        height: 300,
        width: 150,
        decoration: BoxDecoration(                                                                                                     
          
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
        
          children: [
            SizedBox(height: 45,),
            Image.asset('assets/images/7113741900_wfl6512vtss_mdm_low_1 1.png'),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
               
                children: [
                  Text('LG washing machine', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
              SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('₹ 45998'
                      ,
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
                  ],
                ),

                // SizedBox(
                //   height: 20,
                // ),
                // SizedBox(
                //   height: 500,
                //   child: GridView.builder(
                //       itemCount: popularlist.length,
                //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //           crossAxisCount: 2),
                //       itemBuilder: (context, i) {
                //         return Screen(
                //             mainimage: popularlist[i]['mainimage'],
                //             mtext: popularlist[i]['mtext'],
                //             price: popularlist[i]['price']);
                //       }),
                // ),


                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Top Brands',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    Image.asset('assets/images/Right Arrow 4.png'),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 47,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: imagelist.length,
                      itemBuilder: (context, i) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Image.asset(
                            imagelist[i],
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Exclusive Beauty Deals',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    Image.asset('assets/images/Right Arrow 4.png'),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Wrap(
                  spacing: 30,
                  children: [
                    Image.asset('assets/images/Group 47391 (1).png'),
                    Image.asset('assets/images/Group 47394.png'),
                    Image.asset('assets/images/Group 47395.png'),
                    Image.asset('assets/images/Group 47391 (1).png'),
                    Image.asset('assets/images/Group 47393.png'),
                    Image.asset('assets/images/Group 47393.png')
                  ],
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: SizedBox(
          height: 100,
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: Image.asset('assets/images/ic_home.png'), label: ''),
              BottomNavigationBarItem(
                  icon: Image.asset('assets/images/dashboard 1.png'),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Image.asset('assets/images/ic_wishlist.png'),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Image.asset('assets/images/placeholder.png'),
                  label: ''),
            ],
          ),
        ),
      ),
    );
  }
}

final List categorylist = [
  {
    'backgroundcolor': Color(0xff4AB7B6),
    'image': 'assets/images/Vector (1).png',
    'ctext': 'Groceries',
  },
  {
    'backgroundcolor': Color(0xff4B9DCB),
    'image': 'assets/images/washing-machine 1.png',
    'ctext': 'Appliances',
  },
  {
    'backgroundcolor': Color(0xffAF558B),
    'image': 'assets/images/Vector (2).png',
    'ctext': 'Fashion',
  },
  {
    'backgroundcolor': Color(0xff4AB7B6),
    'image': 'assets/images/Vector (1).png',
    'ctext': 'Groceries',
  }
];

final List popularlist = [
  {
    'mainimage': 'assets/images/Mask group (2).png',
    'mtext': 'Strawberries',
    'price': '₹ 10'
  },
  {
    'mainimage': 'assets/images/Mask group (3).png',
    'mtext': 'Freid chips',
    'price': '₹ 12'
  },
  {
    'mainimage': 'assets/images/Mask group (3).png',
    'mtext': 'Moder Chair',
    'price': '₹ 3599'
  },
  {
    'mainimage': 'assets/images/Mask group (2).png',
    'mtext': 'LG washing machine',
    'price': '₹ 49000'
  },
];
final List imagelist = [
  'assets/images/image 2.png',
  'assets/images/image 3.png',
  'assets/images/image 4 (1).png',
  'assets/images/image 2.png'
];
