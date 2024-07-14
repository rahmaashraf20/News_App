import 'package:flutter/material.dart';

class NewsView extends StatelessWidget {
   NewsView({super.key});
  var height , width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
         Column(
          children: [
            Container(
            height: height * .5,
            width: width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/news.png'))),
          ),
          Container(
            decoration: BoxDecoration(color: Colors.black),
            child: Container(
              height: height * .5,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
            ),
          )

            
          
          ],
        ),
  Positioned(
    top: height * .5 - (width * .2),
    left: width * 3,
    child: Container(
      color: Colors.grey,
      height: width * .5,
      width: width * .5,
      child: Text('heeeloooooooooooooooooooooooooooooosjewewckkwugdkew'),
  
  
    ),
  )
 
  ]));
}}
