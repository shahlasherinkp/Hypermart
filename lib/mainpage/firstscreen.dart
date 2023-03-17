import 'package:flutter/material.dart';

import 'components/category.dart';
import 'components/form.dart';

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
                     SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Popular Deals',style:
                              TextStyle(fontSize: 16, fontWeight: FontWeight.w700),),
                              Image.asset('assets/images/Right Arrow 4.png'),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Container(
                            height: 265,
                            width: 150,
                            

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
