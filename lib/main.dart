import 'package:B2_FoodDelivery/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // bỏ thanh debug đỏ 
      title: 'Food App',
      theme: ThemeData(
        fontFamily: "Poppins",
        scaffoldBackgroundColor: kWhiteColor,
        primaryColor: kPrimaryColor,
        textTheme: TextTheme(
          headline: TextStyle(
            fontWeight: FontWeight.bold,
          ),
          button: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
 class HomeScreen extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: Column( // từ trên xuống dưới 
         crossAxisAlignment: CrossAxisAlignment.start,
         children:<Widget> [
          Padding(
            padding: const EdgeInsets.only(top: 50, right: 16),
            child: Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset(
                "assets/icons/menu.svg",
                height: 11,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Simple way to find \nTasty food",
              style: Theme.of(context).textTheme.headline,
            ),
          ),
          SingleChildScrollView( 
            scrollDirection: Axis.horizontal, // scroll theo chieu nghang
            child: Row(
              children: <Widget>[
                CategoryTitle(title: "All",active: true,), // chọn đối tượng -> Extract Widget
                CategoryTitle(title: "Italian",active: false,),
                CategoryTitle(title: "Asian",active: false,),
                CategoryTitle(title: "Chinese",active: false,),
                CategoryTitle(title: "Burgers", active: false,),
              ],
            ),
          ),
          //Tim kiếm 
          Container(
            alignment: Alignment.centerLeft,
            height: 50,
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: kBorderColor)
            ),
            child: SvgPicture.asset("assets/icons/search.svg"),
          ),
         ],
       ),
     );
   }
 }

class CategoryTitle extends StatelessWidget {
  final String title;
  final bool active;

  const CategoryTitle({
    Key key,
    this.title,
    this.active = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 30),
      child: Text(
        title,
        style: Theme.of(context).textTheme.button.copyWith(
          color: active ? kPrimaryColor : kTextColor.withOpacity(0.5),
        ),
      ),
    );
  }
}

