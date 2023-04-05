import 'package:flutter/material.dart';

import 'components/category.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        // leading: Text.rich(

        //   // TextSpan(children: TextSpan()
        //   // ),

        // ),
        actions: [
          // DropdownButton(items: , onChanged: (){}),
          Image.asset('assets/images/bell (2) 1.png'),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              children: [
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(12)),
                  child: TextFormField(
                    decoration: InputDecoration(
                        fillColor: const Color(0x00c5c5c5),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1, color: Colors.lightBlue),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Search Anything...',
                        prefixIcon:
                            Image.asset('assets/images/search (6) 1.png'),
                        suffixIcon: Image.asset('assets/images/mic (1) 1.png')),
                  ),
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
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Categories',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    Image.asset('assets/images/Right Arrow 4.png'),
                  ],
                )
              ],
            ),
          ),
          ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categorylist.length,
              itemBuilder: (context, i) {
                return Categories(
                    backgroundcolor: categorylist[i]['backgroundcolor'],
                    image: categorylist[i]['image'],
                    ctext: categorylist[i]['ctext'], );
              })
        ],
      ),
    );
  }
}


  final List categorylist = [
    {
      'backgroundcolor': 'Color(0xff4AB7B6)',
      'image': 'assets/images/Vector (1).png',
      'ctext': 'Groceries',
    },
    {
      'backgroundcolor': 'Color(0xff4B9DCB)',
      'image': 'assets/images/washing-machine 1.png',
      'ctext': 'Appliances',
    },
    {
      'backgroundcolor': 'Color(0xffAF558B)',
      'image': 'assets/images/Vector (2).png',
      'ctext': 'Fashion',
    },
    {
      'backgroundcolor': 'Color(0xff4AB7B6)',
      'image': 'assets/images/Vector (1).png',
      'ctext': 'Groceries',
    }, {
      'backgroundcolor': 'Color(0xff4B9DCB)',
      'image': 'assets/images/washing-machine 1.png',
      'ctext': 'Appliances',
    },
    {
      'backgroundcolor': 'Color(0xffAF558B)',
      'image': 'assets/images/Vector (2).png',
      'ctext': 'Fashion',
    },
  ];
