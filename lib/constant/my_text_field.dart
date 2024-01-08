import 'package:flutter/material.dart';
import 'package:turads/constant/colors.dart';
// D:\hamzoooz\file\projects\flutter\TURADS\turads\lib\constant\my_text_field.dart
// StatelessWidget
class MyCoustmFeild extends StatelessWidget {

  final TextInputType textInputTypeee;
  final bool isPassword;
  final String hintTexttt;

  const MyCoustmFeild({ Key? key,

    required this.textInputTypeee,
    required this.hintTexttt,
    required this.isPassword,

  }) : super(key: key);
//

  @override
  Widget build(BuildContext context) {
    return TextField(
        keyboardType: textInputTypeee,
        obscureText: isPassword,
        decoration: InputDecoration(
          // to remove border by defualt
          border: InputBorder.none,
          //  this blac holder
          hintText: hintTexttt,
          // ignore: prefer_const_constructors
          // hintStyle: TextStyle(background: Color.fromARGB(255, 113, 0, 1), ),
          focusedBorder: const  OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromARGB(255, 8, 124, 233),
              // color:backgraundtextfeildcolor,
            ),
          ),
          //  fill Color
          // fillColor: Colors.amber(0077c7),
          fillColor: backgraundtextfeildcolor,
          filled: true,
          // this for padding inside
          contentPadding: const  EdgeInsets.all(8),
        ));
  }
}
