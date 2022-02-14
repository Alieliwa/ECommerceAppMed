import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicalstore/constant/colors.dart';
import 'package:medicalstore/view/view_auth/secondscreen.dart';
import 'package:medicalstore/view/widget/customtext.dart';
import 'package:medicalstore/view/widget/customtextfromfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: colors.primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50, right: 20, left: 20),
        child: Form(
          child: ListView(
            children: [
              Form(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: 'Welcome,',
                          fontSize: 30,
                          color: Colors.black,
                        ),
                        CustomText(
                            text: 'Sign Up', fontSize: 18, color: colors.primaryColor),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomText(
                      text: 'Sign in to Continue',
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    CustomTextFromFeild(
                      // onSave: (value){},
                      // validator:(value){} ,
                      text: 'E_mail',
                      hinttext: 'Enter Your e_mail',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomTextFromFeild(
                      // onSave:(value){
                      // } ,
                      // validator:(value){
                      // } ,
                      text: 'Password',
                      hinttext: '*************',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomText(
                        alignment: Alignment.topRight,
                        text: 'Forget Password?',
                        fontSize: 14,
                        color: Colors.grey),
                    SizedBox(height: 20,),
                    FlatButton(
                      onPressed: () {
                        Get.to(SecondScreen());

                      },
                      child:CustomText(
                        alignment: Alignment.center,
                        text: 'SIGN IN',
                        color: Colors.white,
                        fontSize:14 ,),
                      color: colors.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    SizedBox(height: 20,),
                    CustomText(
                        alignment: Alignment.center,
                        text: '-OR-',
                        fontSize: 18,
                        color: Colors.black),
                    SizedBox(height: 40,),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8,),
                          color: Colors.grey.shade100
                      ),
                      child: FlatButton(
                        onPressed: () {},
                        child:Row(
                          children: [
                            Image.asset('assets/image/facebook.png'),
                            SizedBox(width: 80,),
                            Text('Sign In with Facebook',
                              style: TextStyle(fontSize: 15),)
                          ],
                        ),
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8,),
                          color: Colors.grey.shade100
                      ),
                      child: FlatButton(
                        onPressed: () {},
                        child:Row(
                          children: [
                            Image.asset('assets/image/googl.png'),
                            SizedBox(width: 80,),
                            Text('Sign In with Google',
                              style: TextStyle(fontSize: 15),)
                          ],
                        ),
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ) ,
      ),
    );
  }
}
