import 'package:expenseaccount/screens/AppExpense.dart';
import 'package:expenseaccount/screens/addIncome.dart';
import 'package:expenseaccount/screens/diagram.dart';
import 'package:expenseaccount/screens/muAccount.dart';
import 'package:expenseaccount/screens/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';
import '../constants.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
body: ListView(children: [
  SizedBox(height: height*.1,),
  Row(mainAxisAlignment: MainAxisAlignment.center,
    children: [

      Container(width:
      width*.9,
        child: Center(
          child: Text(" My Current Balance : ${currentBalance==null?0:currentBalance} \$" ,style:  TextStyle(fontSize:
          16
              ,fontFamily: "",color:secondaryColor,fontWeight: FontWeight.w300,letterSpacing: 3

          ),),

        ),
      ),
    ],
  ),

  SizedBox(height: height*.1,),

  Column(
    children: [
      Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [

          InkWell(child:  Container(width:width*.8,height: height*.1,

            child: Card(color: mainColor,elevation: 10,shadowColor: secondaryColor,borderOnForeground:false,
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(1),),

              child: Center(
                child: Text("Add new income" ,style:  TextStyle(fontSize:
                15
                    ,fontFamily: "",color:secondaryColor,fontWeight: FontWeight.w300,letterSpacing: 4

                ),),

              ),
            ),
          ),onTap: (){Navigator.of(context).push(
    MaterialPageRoute(builder: (BuildContext context) => AddIncome()));


          },)
        ],
      ),
      SizedBox(height: height*.04,),
      Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [

          InkWell(child:  Container(width:width*.8,height: height*.1,

            child: Card(color: mainColor,elevation: 10,shadowColor: secondaryColor,borderOnForeground:false,
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(1),),

              child: Center(
                child: Text("record new expense" ,style:  TextStyle(fontSize:
                15
                    ,fontFamily: "",color:secondaryColor,fontWeight: FontWeight.w300,letterSpacing: 4

                ),),

              ),
            ),
          ),onTap: (){Navigator.of(context).push(
              MaterialPageRoute(builder: (BuildContext context) => AddExpense()));


          },)
        ],
      ),
      SizedBox(height: height*.04,),
      Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [

          InkWell(child:  Container(width:width*.8,height: height*.1,

            child: Card(color: mainColor,elevation: 10,shadowColor: secondaryColor,borderOnForeground:false,
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(1),),

              child: Center(
                child: Text("Reports and diagrams" ,style:  TextStyle(fontSize:
                15
                    ,fontFamily: "",color:secondaryColor,fontWeight: FontWeight.w300,letterSpacing: 4

                ),),

              ),
            ),
          ),onTap: (){Navigator.of(context).push(
              MaterialPageRoute(builder: (BuildContext context) => Diagram()));},)
        ],
      ),
      SizedBox(height: height*.04,),  Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [

          InkWell(child:  Container(width:width*.8,height: height*.1,

            child: Card(color: mainColor,elevation: 10,shadowColor: secondaryColor,borderOnForeground:false,
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(1),),

              child: Center(
                child: Text("My profile" ,style:  TextStyle(fontSize:
                15
                    ,fontFamily: "",color:secondaryColor,fontWeight: FontWeight.w300,letterSpacing: 4

                ),),

              ),
            ),
          ),onTap: (){
            Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context) => MyAccount()));
          },)
        ],
      ),
      SizedBox(height: height*.04,), Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [

          InkWell(child:  Container(width:width*.8,height: height*.1,

            child: Card(color: mainColor,elevation: 10,shadowColor: secondaryColor,borderOnForeground:false,
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(1),),

              child: Center(
                child: Text("Settings" ,style:  TextStyle(fontSize:
                15
                    ,fontFamily: "",color:secondaryColor,fontWeight: FontWeight.w300,letterSpacing: 4

                ),),

              ),
            ),
          ),onTap: ()
          {Navigator.of(context).push(
          MaterialPageRoute(builder: (BuildContext context) => Settings()));

          },)
        ],
      ),
      SizedBox(height: height*.04,),



    ],
  )

],),
//      drawer: Drawer(
//        child: Container(color: secondaryColor,
//          child: Column()),),

    );
//


  }
  Widget _sparkLine() {
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
    ];
    return Container(
      width: width * .8,
      height: height * .30,
      child: Sparkline(
        data: data,
//        the color of the  area below the diagram
        fillColor: Colors.grey.shade300, lineColor: Colors.black,
        pointColor: Colors.black,
        lineWidth: 3.5, fallbackWidth: 200,
        fillMode: FillMode.below,
      ),
    );
  }
}
