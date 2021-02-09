import 'package:expenseaccount/screens/registration.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants.dart';
import 'home.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    double width = MediaQuery.of(context).size.width;
   return Scaffold(
     backgroundColor: mainColor,
     body:Container(padding: EdgeInsets.all(width*.05),
       child: SingleChildScrollView(
         child: Column(
           children: [
             SizedBox(height: height*.2,),
             Container(child: Center(child: Text("login",style: TextStyle(fontSize: 25,color: secondaryColor,fontFamily:
             "",fontWeight:FontWeight.bold),),),),
             SizedBox(height: height*.1,),
             TextField(
               keyboardType: TextInputType.emailAddress,
               style: TextStyle(color: secondaryColor, letterSpacing: 1,fontSize: 15),

//               textDirection: TextDirection.ltr,textAlign: TextAlign.right,
               decoration: new InputDecoration(
                 fillColor: Colors.white,
                 focusedBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(15) ,
                   borderSide: BorderSide(color: Colors.white, width: 1.0),
                 ),
                 enabledBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(15),
                   borderSide: BorderSide(color: secondaryColor, width: 1.0),
                 ),
                 hintText: 'Email',hintStyle:  TextStyle(fontSize:
               13,fontWeight: FontWeight.bold,
                   color:secondaryColor,letterSpacing: 3

               ),
               ),
             ),
             SizedBox(height: height*.04,),
             TextField(obscureText: true,

               style: TextStyle(color: secondaryColor,letterSpacing: 1),
//               textDirection: TextDirection.ltr,textAlign: TextAlign.right,
               decoration: new InputDecoration(
                 fillColor: Colors.grey,

                 focusedBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(15) ,
                   borderSide: BorderSide(color: Colors.white, width: 1.0),
                 ),
                 enabledBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(15),
                   borderSide: BorderSide(color: secondaryColor, width: 1.0),
                 ),
                 hintText: 'Password',hintStyle: TextStyle(fontSize:
               13,fontWeight: FontWeight.bold,
              color:secondaryColor,letterSpacing: 3

               ),
               ),
             ),
             SizedBox(height: height*.06,),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 InkWell(onTap: (){
                   Navigator.of(context).pushReplacement(MaterialPageRoute(
                       builder: (BuildContext context) =>
                       Home()));
                 },
                   child: Container(height: height*.08,width: width*.5,decoration: BoxDecoration(borderRadius:
                   BorderRadius.circular(30) ,color: secondaryColor),

                     child: Center(
                       child: Text("Login" ,style: TextStyle(fontSize:
                       25,fontFamily: "ArbFONTS-59GE-SS-Two",color:whiteColor,fontWeight: FontWeight.bold

                       ),
                       ),),
                   ),
                 ),
               ],
             ),
             SizedBox(height: height*.06,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 InkWell(child: Text("Forget Password ?",style: TextStyle(fontSize: 12,color: secondaryColor,fontFamily:
                 "",fontWeight:FontWeight.w300),),),
                 InkWell(onTap: (){
                   Navigator.of(context).push(MaterialPageRoute(
                       builder: (BuildContext context) =>
                       Registration()));
                 },
                   child: Text("Dont\' have an account ?",style: TextStyle(fontSize: 12,color: secondaryColor,fontFamily:
                 "",fontWeight:FontWeight.w300),),)
               ],
             )








           ],
         ),
       ),
     ),
   );
     

  }
}
