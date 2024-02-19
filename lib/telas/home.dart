// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:beauty_date/colors.dart';
import 'package:beauty_date/telas/drawe_left.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
    
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
         children: [
          Expanded(child: DrawerLeft()),
          Expanded(
            flex: 4,
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: defaultPadding,vertical: defaultPadding * 2),
              
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
              
                  children: [
              
                    header(),
                    SizedBox(
                      height: defaultPadding,
                    ),
                    Row(
 crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,                      
                      children: [
              
                      Expanded(
                        flex: 4,
                        child:Container(
                        height: 300,
                         decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child: Column(
                            children: [

                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(defaultPadding/2),
                                    child: Text("Finacial Analitics",style: GoogleFonts.ubuntu(
                                    color:Colors.white,
                                    fontSize:16,
                                    fontWeight:FontWeight.w600
                                    
                                    
                                    
                                    ),),

                                    
                                    

                                  ),
                                  Spacer(),
                                                                    Spacer(),
                                  Spacer(),
                                                                    Spacer(),


                                  SizedBox(width: defaultPadding*2,),

                                  Container(
                                    height: 10,
                                    width: 10,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: secondaryColor
                                      


                                    ),
                                    
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.all(defaultPadding/2),
                                    child: Text("Income",style: GoogleFonts.ubuntu(
                                    color:Colors.white,
                                    fontSize:16,
                                    fontWeight:FontWeight.w600
                                    
                                    
                                    
                                    
                                    ),),
                                    
                                    

                                  ),




                                  Container(
                                    height: 10,
                                    width: 10,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: secondaryColor
                                      


                                    ),
                                    
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.all(defaultPadding/2),
                                    child: Text("Expenses",style: GoogleFonts.ubuntu(
                                    color:Colors.white,
                                    fontSize:16,
                                    fontWeight:FontWeight.w600
                                    
                                    
                                    
                                    
                                    ),),
                                    
                                    

                                  ),
                                                                    Spacer(),

                                ],
                              ),


                            ],
                          ),
              
                        ) ),
                        SizedBox(width: defaultPadding*1,),
              
                        Expanded(flex: 2,
                        child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 142,
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                            ),
                            SizedBox(height: 14,),
                            Container(
                              height: 142,
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                            ),
                                         

                          ],
                        ),
                        
              
                        
                        ),
                        
                    ],)
              
                  ],
                ),
              
              
              
              
              
              
              ),
            ))


         ],

      ),
    );
  }

  Row header() {
    return Row(
                    children: [
            
                      Spacer(),
                      Container(
            
                        height: 40,
                        width: 250,
                        padding: EdgeInsets.only(left: defaultPadding),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: primaryColor
                        ),
                         child: TextFormField(
                          initialValue: "Search",
                          style: TextStyle(
                            color: Colors.grey,fontSize: 12,
            
                          
                          ),
                          decoration: InputDecoration(
                          disabledBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          suffixIcon: Icon(Icons.search,
                          color: Colors.white,
                          )
            
                          ),
                         ),
                      ),
            
                      SizedBox(width: defaultPadding *2,),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                         child: Icon(Icons.notifications, color: Colors.white,),
                      )
            
            
                    ],
                  );
  }
}