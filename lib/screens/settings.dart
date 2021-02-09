import 'package:expenseaccount/screens/registration.dart';
import 'package:flutter/material.dart';

import '../constants.dart';


class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor:mainColor,
//      appBar: AppBar(backgroundColor: secondaryColor,actions: [
//        IconButton(icon: Icon(Icons.add), onPressed: (){})
//      ],),
      body: Container(

        child: ListView(children: [
          SizedBox(height: height*.05,),

          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(width:width*.9,height: height*.1,

                child: Card(color: mainColor,elevation: 30,shadowColor: secondaryColor,borderOnForeground:false,
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(15),),

                  child: Center(
                    child: Text("Settings" ,style:  TextStyle(fontSize:
                    15
                        ,fontFamily: "",color:secondaryColor,fontWeight: FontWeight.w300

                    ),),

                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: height*.03,),

          Column(
            children: [
              Container(
                width: width*.95,
                child: Card(elevation: 10,color: mainColor,shadowColor: secondaryColor,shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(1),),
                  child: Column(
                    children: [
                      Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: width*.08),
                            child: Text("Spending Range per Month",style: TextStyle(fontSize:
                            12
                                ,fontFamily: "",color:secondaryColor,fontWeight: FontWeight.w300

                            ),
                            ),
                          ),
                          SizedBox(height: height*.05,)

                        ],
                      ),
                      Container(width: width*.8,height: height*.097,
                        child: Container(height: height*.08,padding: EdgeInsets.all(1),
                          decoration: BoxDecoration(borderRadius:
                          BorderRadius.all(Radius.circular(10)),
                              color: secondaryColor),child: Center(child: Container(child:
                          Center(child:Row(
                            children: [
                              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(" \$ 500 - 1000 ",style: TextStyle(fontSize:
                                  12

                                      ,fontFamily: "",color:secondaryColor,fontWeight: FontWeight.w300,letterSpacing: 4

                                  ),
                                  ),
                                  SizedBox(width: width*.2,),

                                  InkWell(onTap: (){},
                                    child: Container(width: width*.1,
                                      height: height*.03,
                                      color: secondaryColor.withOpacity(.2),
                                      child: Center(
                                        child: Text("Edit",style: TextStyle(fontSize:
                                        8

                                            ,fontFamily: "",color: secondaryColor,letterSpacing: 1

                                        ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )),
                            decoration: BoxDecoration(borderRadius:
                            BorderRadius.all(Radius.circular(10))
                                ,
                                color:
                                mainColor),height: height*.1
                            ,width: width*2,),),),
                      ),
                      SizedBox(height: height*.05,)
                    ],
                  ),
                ),
              ),
              SizedBox(height: height*0,),
              Container(
                width: width*.95,
                child: Card(elevation: 10,color: mainColor,shadowColor: secondaryColor,shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(1),),
                  child: Column(
                    children: [
                      Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: width*.08),
                            child: Text("App Style",style: TextStyle(fontSize:
                            15
                                ,fontFamily: "",color:secondaryColor,fontWeight: FontWeight.w300

                            ),
                            ),
                          ),
                          SizedBox(height: height*.05,)

                        ],
                      ),
                      Container(width: width*.8,height: height*.097,
                        child: Container(width: width*.5,height: height*.08,padding: EdgeInsets.all(1),
                          decoration: BoxDecoration(borderRadius:
                          BorderRadius.all(Radius.circular(10)),
                              color: secondaryColor),child: Center(child: Container(child:
                          Center(child:Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                             InkWell(
                               child: Icon(Icons.wb_sunny),onTap: (){
                                 setState(() {
                                   secondaryColor = Colors.pink ;
                                   mainColor = Colors.white ;

                                 });
                             },


                              ),
                              InkWell(
                                child: Container(height: 20,width: 20,decoration: BoxDecoration(shape:
                                BoxShape.circle,color: Colors.white),),onTap: (){
                                setState(() {
                                  secondaryColor = Color(0xffC3639A) ;
                                  mainColor = Color(0xff0F2339 );

                                });
                              },


                              ),

                            ],
                          )),
                            decoration: BoxDecoration(borderRadius:
                            BorderRadius.all(Radius.circular(10))
                                ,
                                color:
                                mainColor),height: height*.1
                            ,width: width*2,),),),
                      ),
                      SizedBox(height: height*.05,),

                    ],
                  ),
                ),
              ),
              Container(
                width: width*.95,
                child: Card(elevation: 10,color: mainColor,shadowColor: secondaryColor,shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(1),),
                  child: Column(
                    children: [
                      Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: width*.08),
                            child: Text("Password :",style: TextStyle(fontSize:
                            15
                                ,fontFamily: "",color:secondaryColor,fontWeight: FontWeight.w300

                            ),
                            ),
                          ),
                          SizedBox(height: height*.05,)

                        ],
                      ),
                      Container(width: width*.8,height: height*.097,
                        child: Container(width: width*.5,height: height*.08,padding: EdgeInsets.all(1),
                          decoration: BoxDecoration(borderRadius:
                          BorderRadius.all(Radius.circular(10)),
                              color: secondaryColor),child: Center(child: Container(child:
                          Center(child:Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [Text("********",style: TextStyle(fontSize:
                            12
                                ,fontFamily: "",color:secondaryColor,fontWeight: FontWeight.w300,letterSpacing: 4

                            ),
                            ),
                            ],
                          )),
                            decoration: BoxDecoration(borderRadius:
                            BorderRadius.all(Radius.circular(10))
                                ,
                                color:
                                mainColor),height: height*.1
                            ,width: width*2,),),),
                      ),
                      SizedBox(height: height*.05,)
                    ],
                  ),
                ),
              )


              ,SizedBox(height: height*.05,)
              , Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  InkWell(child:  Container(width:width*.8,height: height*.1,

                    child: Card(color: mainColor,elevation: 10,shadowColor: secondaryColor,borderOnForeground:false,
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(1),),

                      child: Center(
                        child: Text("Save Changes" ,style:  TextStyle(fontSize:
                        20
                            ,fontFamily: "",color:secondaryColor,fontWeight: FontWeight.w300

                        ),),

                      ),
                    ),
                  ),onTap: (){},)
                ],
              ),
            ],
          )

        ],),
      ),
//      drawer: Drawer(
//        child: Container(color: secondaryColor,
//          child: Column()),),

    );
//


  }
}
