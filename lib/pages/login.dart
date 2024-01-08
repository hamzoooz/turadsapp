// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:turads/constant/colors.dart';
import 'package:turads/pages/register.dart';
import '../constant/my_text_field.dart';
// void _onButtonPresed() {};

// class ButtonLogin extends StatelessWidget {
//   const ButtonLogin({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return TextButton(
//     // return ElevatedButton(
//       onPressed: (){},
//       style:  ButtonStyle(
//           backgroundColor: MaterialStateProperty.all(backgraundtextfeildcolor),
//           padding:  MaterialStateProperty.all(EdgeInsets.all(12),
//           )),
//       child: const Text("Sign in",
//           style: TextStyle(
//             fontSize: 18.0,
//             color: Colors.black,

//           )),
//     );
//   }
// }

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Center(
      child: Padding(
        padding: EdgeInsets.all(33.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              MyCoustmFeild(
                  textInputTypeee: TextInputType.emailAddress,
                  hintTexttt: "Enter Your Email  ^_^  ",
                  isPassword: false),
              SizedBox(
                height: 25,
              ),
              MyCoustmFeild(
                  textInputTypeee: TextInputType.text,
                  hintTexttt: "Enter Your Password  ^_^  ",
                  isPassword: true),
              SizedBox(
                height: 25,
              ),

              // TextButton(onPressed: (){},
              //  child: Text("data"))
              TextButton(
                // return ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(backgraundtextfeildcolor),
                    padding: MaterialStateProperty.all(
                      EdgeInsets.all(12),
                    )),
                child: const Text("Sign in",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                    )),
              ),

              SizedBox(
                height: 15,
              ),
              // ignore: duplicate_ignore
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text("If you are not have accont "),
                  //  Text("Register ", style: TextStyle(fontSize: 18.5,),),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                        // Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Register()),
                        );
                      },
                      child: Text(" Register ...")),
                ],
              )
            ],
          ),
        ),
      ),
    )));
  }
}
