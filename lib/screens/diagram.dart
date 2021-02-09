import 'package:expenseaccount/screens/AppExpense.dart';
import 'package:expenseaccount/screens/addIncome.dart';
import 'package:expenseaccount/screens/muAccount.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';
import '../constants.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Diagram extends StatefulWidget {
  @override
  _DiagramState createState() => _DiagramState();
}

class _DiagramState extends State<Diagram> {
  String currentBalance = "0" ;
  getCurrentBalance()async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      currentBalance = preferences.getString('addIncome');

    });
  }


  @override
  void initState() {
    getCurrentBalance();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor:mainColor,
      drawer: Drawer(),
//      appBar: AppBar(backgroundColor: secondaryColor,actions: [
//        IconButton(icon: Icon(Icons.add), onPressed: (){})
//      ],),
      body: Container(padding: EdgeInsets.all(width*.015),
        child: ListView(children: [

          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: height*.15,),
              Text("This week",style: TextStyle(
                  color: Colors.white, fontSize: 18
              ),),
            ],
          ),
         Column(
           children: [
             Row(
               children: [
                 Container(height: height*.27,
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                     children: [
                       Text("1000",style: TextStyle(
                           color: Colors.white, fontSize: 8
                       ),),
                       Text("900",style: TextStyle(
                           color: Colors.white, fontSize: 8
                       ),),
                       Text("800",style: TextStyle(
                           color: Colors.white, fontSize: 8
                       ),),
                       Text("700",style: TextStyle(
                           color: Colors.white, fontSize: 8
                       ),),
                       Text("600",style: TextStyle(
                           color: Colors.white, fontSize: 8
                       ),),
                       Text("500",style: TextStyle(
                           color: Colors.white, fontSize: 8
                       ),), Text("400",style: TextStyle(
                           color: Colors.white, fontSize: 8
                       ),), Text("300",style: TextStyle(
                           color: Colors.white, fontSize: 8
                       ),), Text("200",style: TextStyle(
                           color: Colors.white, fontSize: 8
                       ),), Text("100",style: TextStyle(
                           color: Colors.white, fontSize: 8
                       ),),

                     ],
                   ),
                 ),
                 SizedBox(width: width*.06,),
                 _sparkLinePerWeek(),

               ],
             ),
             Row(children: [
               SizedBox(width: width*.01,),

               Text("Sat",style: TextStyle(
                 color: Colors.white, fontSize: 8
               ),),
               Text("Sat",style: TextStyle(
                   color: Colors.white, fontSize: 8
               ),),Text("Sun",style: TextStyle(
                   color: Colors.white, fontSize: 8
               ),),Text("Mon",style: TextStyle(
                   color: Colors.white, fontSize: 8
               ),),Text("Tue",style: TextStyle(
                   color: Colors.white, fontSize: 8
               ),),Text("Thu",style: TextStyle(
                   color: Colors.white, fontSize: 8
               ),),Text("Fri",style: TextStyle(
                   color: Colors.white, fontSize: 8
               ),),
             ],
             mainAxisAlignment: MainAxisAlignment.spaceAround,),
             Divider(color: secondaryColor,),
             SizedBox(height: height*.1,),

             Text("This Month",style: TextStyle(
                 color: Colors.white, fontSize: 18
             ),),             SizedBox(height: height*.04,),


             Row(
               children: [
                 Container(height: height*.27,
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                     children: [
                       Text("1000",style: TextStyle(
                           color: Colors.white, fontSize: 8
                       ),),
                       Text("900",style: TextStyle(
                           color: Colors.white, fontSize: 8
                       ),),
                       Text("800",style: TextStyle(
                           color: Colors.white, fontSize: 8
                       ),),
                       Text("700",style: TextStyle(
                           color: Colors.white, fontSize: 8
                       ),),
                       Text("600",style: TextStyle(
                           color: Colors.white, fontSize: 8
                       ),),
                       Text("500",style: TextStyle(
                           color: Colors.white, fontSize: 8
                       ),), Text("400",style: TextStyle(
                           color: Colors.white, fontSize: 8
                       ),), Text("300",style: TextStyle(
                           color: Colors.white, fontSize: 8
                       ),), Text("200",style: TextStyle(
                           color: Colors.white, fontSize: 8
                       ),), Text("100",style: TextStyle(
                           color: Colors.white, fontSize: 8
                       ),),

                     ],
                   ),
                 ),
                 SizedBox(width: width*.01,),
                 _sparkLinePerMonth(),

               ],
             ),
             Row(children: [
               SizedBox(width: width*.04,),

               Text("1",style: TextStyle(
                   color: Colors.white, fontSize: 4
               ),),
               Text("2",style: TextStyle(
                   color: Colors.white, fontSize: 4
               ),),Text("3",style: TextStyle(
                   color: Colors.white, fontSize: 4
               ),),Text("4",style: TextStyle(
                   color: Colors.white, fontSize: 4
               ),),Text("5",style: TextStyle(
                   color: Colors.white, fontSize: 4
               ),),Text("6",style: TextStyle(
                   color: Colors.white, fontSize: 4
               ),),Text("7",style: TextStyle(
                   color: Colors.white, fontSize: 4
               ),),
               Text("8",style: TextStyle(
                   color: Colors.white, fontSize: 4
               ),),Text("9",style: TextStyle(
                   color: Colors.white, fontSize: 4
               ),),Text("10",style: TextStyle(
                   color: Colors.white, fontSize: 4
               ),),
               Text("11",style: TextStyle(
                   color: Colors.white, fontSize: 4
               ),),Text("12",style: TextStyle(
                   color: Colors.white, fontSize: 4
               ),),Text("13",style: TextStyle(
                   color: Colors.white, fontSize: 4
               ),),Text("14",style: TextStyle(
                   color: Colors.white, fontSize: 4
               ),),Text("15",style: TextStyle(
                   color: Colors.white, fontSize: 4
               ),),Text("16",style: TextStyle(
                   color: Colors.white, fontSize: 4
               ),),Text("17",style: TextStyle(
                   color: Colors.white, fontSize: 4
               ),),Text("18",style: TextStyle(
                   color: Colors.white, fontSize: 4
               ),),Text("19",style: TextStyle(
                   color: Colors.white, fontSize: 4
               ),),Text("20",style: TextStyle(
                   color: Colors.white, fontSize: 4
               ),),Text("21",style: TextStyle(
                   color: Colors.white, fontSize: 4
               ),),Text("22",style: TextStyle(
                   color: Colors.white, fontSize: 4
               ),),Text("23",style: TextStyle(
                   color: Colors.white, fontSize: 4
               ),),Text("24",style: TextStyle(
                   color: Colors.white, fontSize: 4
               ),),Text("25",style: TextStyle(
                   color: Colors.white, fontSize: 4
               ),),Text("26",style: TextStyle(
                   color: Colors.white, fontSize: 4
               ),),Text("27",style: TextStyle(
                   color: Colors.white, fontSize: 4
               ),),Text("28",style: TextStyle(
                   color: Colors.white, fontSize: 4
               ),),Text("29",style: TextStyle(
                   color: Colors.white, fontSize: 4
               ),),Text("30",style: TextStyle(
                   color: Colors.white, fontSize: 4
               ),),
             ],
               mainAxisAlignment: MainAxisAlignment.spaceAround,),
           ],
         ),
          Divider(color: secondaryColor,)
        ],),
      ),
//      drawer: Drawer(
//        child: Container(color: secondaryColor,
//          child: Column()),),

    );
//


  }
  Widget _sparkLinePerWeek() {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

//    on these data the chart form depends on .
    var data = [
      7.0,
      20.0,
      15.2,
      30.0,
      15.0,
      40.0,
      2.0,
      8.0,
      5.0,
      10.0,
      17.0,
      17.0,
      17.0
      ,
    ];
    return Container(
      width: width * .85,
      height: height * .25,
      child: Sparkline(
        data: data,
//        the color of the  area below the diagram
        fillColor: mainColor, lineColor: secondaryColor,
        pointColor: Colors.black,
        lineWidth: 1, fallbackWidth: 200,
        fillMode: FillMode.below,
      ),
    );
  }
  Widget _sparkLinePerMonth() {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

//    on these data the chart form depends on .
    var data = [
      7.0,
      20.0,
      15.2,
      30.0,
      15.0,
      40.0,
      2.0,
      8.0,
      5.0,
      10.0,
      11.0,
      17.1,
      4.0,
      17.0
      ,
      7.0,
      20.0,
      1.2,
      30.0,
      15.0,
      4.0,
      2.0,
      8.0,
      5.0,
      10.0,
      17.0,
      1.0,
      17.0,
      7.0,


    ];
    return Container(
      width: width * .9,
      height: height * .25,
      child: Sparkline(
        data: data,
//        the color of the  area below the diagram
        fillColor: mainColor, lineColor: secondaryColor,
        pointColor: Colors.black,
        lineWidth: 1, fallbackWidth: 200,
        fillMode: FillMode.below,
      ),
    );
  }
}
