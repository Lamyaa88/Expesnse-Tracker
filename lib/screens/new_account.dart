import 'package:expenseaccount/screens/new_account.dart';
import 'package:expenseaccount/screens/registration.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import 'home.dart';


class New extends StatefulWidget {
  @override
  _NewState createState() => _NewState();
}

class _NewState extends State<New> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: redColor,
        body:Container(padding: EdgeInsets.all(15),
          child: SingleChildScrollView(child: Column(
            children: [
              SizedBox(height: height*.06,),
              Container(child: Row(mainAxisAlignment: MainAxisAlignment.center
                ,
                children: [
                  Text("حساب يومية جديد" ,style: TextStyle(fontSize: 25 ,fontFamily: "ArbFONTS-59GE-SS-Two",color: Colors.white),),
                ],
              ),),


              SizedBox(height: height*.06,),











            ],
          ),
          ),
        ),
        bottomNavigationBar: _bottomNavigationBar()
    );
  }

  Widget expenseSlider(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    double width = MediaQuery.of(context).size.width;

    return Container(
        height: height * .20,
        width: width * .1,

        child: ListView.builder(
          itemBuilder: (context, index) {
            //======================================================================================== absolute  image path

            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                titleCard(
                    context,
                    //========================================================== base url + image path
                    'assets/boy.jpg',
                    "",
                    "id")
              ],
            );
          },
          itemCount:20,
          scrollDirection: Axis.horizontal,
        )
    );

//
  }
  Widget titleCard(
      //============================================================================================= id is one of the parameters here
      BuildContext context,
      String image,
      String text,
      String SendId) {
    double height = MediaQuery.of(context).size.height;

    double width = MediaQuery.of(context).size.width;

    return InkWell(
        child: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Stack(
              children: <Widget>[
                Container(
                  height: height * .3,
                  width: width * .7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(height * .01),
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.fitWidth),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(height * .01),
                  ),
                  height: height * .3,
                  width: width * .7,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(height * .01),
                  ),
                  height: height * .22,
                  width: width * .7,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Text(text,
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              fontSize: height * .02,
                              fontFamily: 'ArbFONTS-59GE-SS-Two',
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            )),
                        padding: EdgeInsets.only(right: height * .01),
                      ),
                      SizedBox(
                        height: 4.0,
                      ),
                      Container(
                        child: Text('',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              fontSize: height * .02,
                              fontFamily: 'ArbFONTS-59GE-SS-Two',
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            )),
                        padding: EdgeInsets.only(right: height * .01),
                      )
                    ],
                  ),
                )
              ],
            )),
        onTap: () {

        });
  }
  Widget _bottomNavigationBar() {
    return BottomNavigationBar(
      backgroundColor:redColor,

      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: IconButton(icon: Icon(Icons.description,color: Colors.white,), onPressed: (){
            Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context) =>Home()));

          }) ,
          title: Text("تقارير" ,style: TextStyle(color: Colors.white ,fontFamily: "ArbFONTS-59GE-SS-Two"),),
        ),
        BottomNavigationBarItem(
          icon: IconButton(icon: Icon(Icons.date_range,color: Colors.white,), onPressed: (){
            Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context) =>
                    New()));

          }) ,
          title: Text("يومية" ,style: TextStyle(color: Colors.white ,fontFamily: "ArbFONTS-59GE-SS-Two"),),
        ),
        BottomNavigationBarItem(
          icon: IconButton(icon: Icon(Icons.add,color: Colors.white,), onPressed: (){
            Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context) =>Home()));

          }) ,
          title: Text("جديد" ,style: TextStyle(color: Colors.white ,fontFamily: "ArbFONTS-59GE-SS-Two"),),
        ),
        BottomNavigationBarItem(
          icon: IconButton(icon: Icon(Icons.home,color: Colors.white,), onPressed: (){
            Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context) =>Home()));

          }) ,
          title: Text("الرئيسية" ,style: TextStyle(color: Colors.white ,fontFamily: "ArbFONTS-59GE-SS-Two"),),
        ),
      ],
    );
  }


}

