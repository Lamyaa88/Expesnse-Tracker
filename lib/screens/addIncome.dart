import 'package:expenseaccount/screens/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:shared_preferences/shared_preferences.dart';


class AddIncome extends StatefulWidget {
  @override
  _AddIncomeState createState() => _AddIncomeState();
}

class _AddIncomeState extends State<AddIncome> {
  TextEditingController incomeControlller = TextEditingController();

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
                  child: Text("Add New Income" ,style:  TextStyle(fontSize:
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
                            child: Text("Amount :",style: TextStyle(fontSize:
                            15
                                ,fontFamily: "",color:secondaryColor,fontWeight: FontWeight.w300

                            ),
                            ),
                          ),
                          SizedBox(height: height*.05,)

                        ],
                      ),
                      Container(width: width*.8,
                        child: TextField(keyboardType: TextInputType.number,
                          controller: incomeControlller,
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
                            hintText: 'Inter your income amount',hintStyle:  TextStyle(fontSize:
                          13,fontWeight: FontWeight.w300,
                              color:secondaryColor,letterSpacing: 3

                          ),
                          ),
                        ),
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
                            child: Text("Date :",style: TextStyle(fontSize:
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
                            children: [DropdownButton(underline: Container(),
                              items: null,hint:  Text("Day",style: TextStyle(fontSize:
                              10
                                  ,fontFamily: "",color:secondaryColor,fontWeight: FontWeight.w300

                              ),
                              ),
                           onChanged: null,icon: Icon(Icons.keyboard_arrow_down ,color: secondaryColor,)
                              ,),
                              DropdownButton(underline: Container(),
                              items: null,hint:  Text("Month",style: TextStyle(fontSize:
                              10
                                  ,fontFamily: "",color:secondaryColor,fontWeight: FontWeight.w300

                              ),
                              ),
                                onChanged: null,icon: Icon(Icons.keyboard_arrow_down ,color: secondaryColor,)
                                ,),
                              DropdownButton(underline: Container(),
                              items: null,hint:  Text("Year",style: TextStyle(fontSize:
                              10
                                  ,fontFamily: "",color:secondaryColor,fontWeight: FontWeight.w300

                              ),
                              ),
                                onChanged: null,icon: Icon(Icons.keyboard_arrow_down ,color: secondaryColor,)
                                ,)
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
              Container(
                width: width*.95,
                child: Card(elevation: 10,color: mainColor,shadowColor: secondaryColor,shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(2),),
                  child: Column(
                    children: [
                      Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: width*.08),
                            child: Text("Description :",style: TextStyle(fontSize:
                            15
                                ,fontFamily: "",color:secondaryColor,fontWeight: FontWeight.w300

                            ),
                            ),
                          ),
                          SizedBox(height: height*.05,)

                        ],
                      ),
                      Container(width: width*.8,
                        child: TextField(
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
                            hintText: 'Inter your description ',hintStyle:  TextStyle(fontSize:
                          13,fontWeight: FontWeight.w300,
                              color:secondaryColor,letterSpacing: 3

                          ),
                          ),
                        ),
                      ),
                      SizedBox(height: height*.05,)
                    ],
                  ),
                ),
              )


,SizedBox(height: height*.05,)
             , Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [

                 InkWell(
                   child:  Container(width:width*.8,height: height*.1,

                   child: Card(color: mainColor,elevation: 10,shadowColor: secondaryColor,borderOnForeground:false,
                     shape: BeveledRectangleBorder(
                       borderRadius: BorderRadius.circular(1),),

                     child: Center(
                       child: Text("SAVE" ,style:  TextStyle(fontSize:
                       20
                           ,fontFamily: "",color:secondaryColor,fontWeight: FontWeight.w300

                       ),),

                     ),
                   ),
                 ),onTap: ()async{
                     String income = incomeControlller.text ;
                   SharedPreferences preferences = await SharedPreferences.getInstance();
                   preferences.setString('addIncome',income).then((value){
                     Navigator.of(context).push(
                         MaterialPageRoute(builder: (BuildContext context) => Home()));



                   });
                 },)
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
