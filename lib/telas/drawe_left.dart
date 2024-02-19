// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:beauty_date/colors.dart';
import 'package:beauty_date/telas/models/home_model.dart';
import 'package:beauty_date/telas/models/home_model2.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
    
class DrawerLeft extends StatefulWidget {
  const DrawerLeft({Key? key}) : super(key: key);

  @override
  _DrawerLeftState createState() => _DrawerLeftState();
}

class _DrawerLeftState extends State<DrawerLeft> {

int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {




    return Scaffold(

      
      body:  
                
             
                   SingleChildScrollView(
                     child: Container(
                      height: MediaQuery.of(context).size.width,
                      color: primaryColor,
                      child: Column(
                        
                                       
                        
                        children: [
                         
                          SizedBox(
                            height: defaultPadding *  3,
                          ),
                          RichText(text: TextSpan(
                          text: "BEAUTY",
                          style: GoogleFonts.ubuntu(
                            color:Colors.white,
                            fontSize:30,
                            fontWeight:FontWeight.w600
                          
                          
                            
                          ),
                          
                          children: <TextSpan> [
                          TextSpan(
                          text: "DATE",
                          style: GoogleFonts.ubuntu(
                            color:secondaryColor,
                            fontSize:30,
                            fontWeight:FontWeight.w600
                          
                          
                          )
                          ),
                          
                            ]
                          
                          ),
                          ),
                                       
                                    SizedBox(
                                      height: 350,
                                      child: ListView.builder(
                                        
                                         itemCount:modelo.length ,
                                         
                                         itemBuilder: (context, index) {
                                                            return drawerLeft(index ,modelo[index]);
                                      
                                         
                                      },),
                                    ),
                                                              SizedBox(height: defaultPadding*2,),

                                       Expanded(
                                         child: SizedBox(
                                         
                                                                             height: 150,
                                                                             
                                                                             child: ListView.builder(
                                         itemCount:modelo2.length ,
                                         
                                         itemBuilder: (context, index) {
                                                               return drawerLeft2(index ,modelo2[index]);
                                                                             
                                         
                                                                             },),
                                                                           ),
                                       ),
                                       
                                
                       
                        ],
                      ),
                                       ),
                   ),
                  

                
                

              

             

            
                
              
            
              

          

         
    );
  }



 Container drawerLeft2(int index ,HomeModel2 modelo2) {

    return Container(
      decoration: BoxDecoration(
      color: index != null && _selectedIndex == index +7 ?Color(0xFFCCEDDD):Colors.transparent,

      gradient: LinearGradient(colors: [

        secondaryColor2,
        secondaryColor,
      ],
      
       begin: Alignment.topLeft,
       end: Alignment.bottomRight
      )

 


      ),

          child: ListTile(
                      hoverColor:Color(0xFFCCEDDD) ,
                      onTap: () {

setState(() {
  _selectedIndex = modelo2.posicao;
});

                        
                      },
                      leading: Padding(
                        padding: const EdgeInsets.only(left: defaultPadding * 1.5),
                        child: SizedBox(
                        height: 30,
                        width: 30,
                        child: Icon(
                         modelo2.icone,
                          color:index != null && _selectedIndex == index +7? Colors.white:Colors.white54,
                        ),
                        
                        ),
                      ),
                      title: Text(modelo2.titulo,
                      style: GoogleFonts.ubuntu(
                        color:index != null && _selectedIndex == index +7 ?Colors.white:Colors.white54,

                        fontSize:14,
                        fontWeight :FontWeight.w600

                      ),
                      
                      ),
                                              
                    ),

                  );
  }









  







  Container drawerLeft(int index ,HomeModel modelo) {

    return Container(
      decoration: BoxDecoration(
      color: index != null && _selectedIndex == index ?Color(0xFFCCEDDD):Colors.transparent,

      gradient: LinearGradient(colors: [

        secondaryColor2,
        secondaryColor,
      ],
      
       begin: Alignment.topLeft,
       end: Alignment.bottomRight
      )

 


      ),

          child: ListTile(
                      hoverColor:Color(0xFFCCEDDD) ,
                      onTap: () {

setState(() {
  _selectedIndex = modelo.posicao;
});

                        
                      },
                      leading: Padding(
                        padding: const EdgeInsets.only(left: defaultPadding * 1.5),
                        child: SizedBox(
                        height: 30,
                        width: 30,
                        child: Icon(
                         modelo.icone,
                          color:index != null && _selectedIndex == index ? Colors.white:Colors.white54,
                        ),
                        
                        ),
                      ),
                      title: Text(modelo.titulo,
                      style: GoogleFonts.ubuntu(
                        color:index != null && _selectedIndex == index ?Colors.white:Colors.white54,

                        fontSize:14,
                        fontWeight :FontWeight.w600

                      ),
                      
                      ),
                                              
                    ),

                  );
  }









  
}

  