import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class DetailPage extends StatefulWidget {
  final imgPath,title;

  DetailPage({this.imgPath,this.title});
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(

        children: [

          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.imgPath),
                fit: BoxFit.cover,
              ),

            ),
          ),
          BackdropFilter(
              filter: new ImageFilter.blur(sigmaX: 4,sigmaY: 4),
            child: Container(
              decoration: BoxDecoration(color: Colors.black.withOpacity(0.5)),
            ),
          ),

          Padding(
          padding: EdgeInsets.fromLTRB(15.0, 35.0, 15.0, 15.0),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).pop(context);
                },
                child: Container(
                  height:40.0,
                  width:40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color(0xFFFD4F99),
                  ),
                  child: Center(
                    child: Icon(Icons.arrow_back_ios,color: Colors.white),

                  )
                ),
              ),
              Text(widget.title.toString().toUpperCase(),
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w400,
                fontSize: 19.0,
                textStyle: TextStyle(
                  color: Colors.white
                )
              ),

              ),
              Container(
                  height:40.0,
                  width:40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color(0xFF353535),
                  ),
                  child: Center(
                    child: Icon(Icons.bookmark_border,color: Colors.white),

                  )
              ),
            ],
          ),
          ),
          Positioned(
            top:100.0,
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width-15.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Trendy Attractions',
                        style: GoogleFonts.montserrat(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                          textStyle: TextStyle(color: Colors.white),
                        )),
                        IconButton(icon: Icon(Icons.more_vert_outlined),
                            color: Colors.white,
                            onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height:10.0),
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 10.0),
                        child: Container(
                          height: 220.0,
                          width: 350.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                              image:AssetImage('assets/kyoto.jpg'),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.darken),
                            ),
                          ),
                        ),

                      ),
                      Positioned(
                        top:125.0,
                        left:10.0,
                        child: Container(
                          width:MediaQuery.of(context).size.width-60.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Kyotu Tour',
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.0,
                                        textStyle: TextStyle(color: Colors.white)
                                    ),),
                                  Text(
                                    'Three day  tour around kyoto',
                                    style: GoogleFonts.montserrat(
                                      fontSize: 14.0,
                                      textStyle: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(right:50.0,top:10.0),
                                child: Container(
                                  height:40.0,
                                  width:40.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7.0),
                                    color: Colors.white,
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      color: Color(0xFFFD4F99),
                                      size: 14.0,
                                    ),
                                  ),
                                ),
                              ),

                            ],

                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height:20.0),
                  Container(
                    width: MediaQuery.of(context).size.width-15,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Weekly Highlights',
                        style: GoogleFonts.montserrat(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                          textStyle: TextStyle(color: Colors.white),

                        ),)
                      ],
                    ),
                  ),
                  SizedBox(height:20.0),
                  Container(
                    height: 220.0,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        buildListItem('assets/japan.jpg','Takeshi castle','\$200 - \$400'),
                        buildListItem('assets/kyoto.jpg','Heaven\'s gate','\$50 - \$150'),
                        buildListItem('assets/canada.jpg','Miay gate','\$300 - \$350'),

                      ],
                    ),

                  ),

                ],
              ),
            ),
          ),


        ],
      ),
    );
  }
  Widget buildListItem(String imgPath, String placename , String price){
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Stack(
        children: [
          Container(
            height:205.0,
            width:150.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: AssetImage(imgPath),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.darken),
              )
            ),
          ),
          Positioned(
            top:15.0,
            right:15.0,
            child: Container(
              height:30.0,
              width:30.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.white,
              ),
              child: Center(
                child: Icon(Icons.bookmark_border,
                color: Color(0xFFFD4F99),
                size:20.0),

              ),
            ),
          ),
          Positioned(
            top: 145.0,
            left:15.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(placename,
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w500,
                        fontSize: 15.0,
                        textStyle: TextStyle(
                            color: Colors.white
                        )
                    )
                ),
                Text(price,
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w400,
                        fontSize: 14.0,
                        textStyle: TextStyle(
                            color: Colors.white
                        )
                    )
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
