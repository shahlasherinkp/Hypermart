import 'package:flutter/material.dart';

class Textformd extends StatelessWidget {
  const Textformd({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      decoration: InputDecoration(
        
          fillColor: Colors.grey,
          enabledBorder: OutlineInputBorder(
            borderSide:
                const BorderSide(width: 1, color:Colors.transparent),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                width: 1, color: Colors.transparent),
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: 'Search Anything...',
          prefixIcon:
              Image.asset('assets/images/search (6) 1.png'),
          suffixIcon: Image.asset('assets/images/mic (1) 1.png')),
    );
  }
}
