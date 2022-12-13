import 'dart:ui';

import 'package:cleaning/color_schema.dart';
import 'package:flutter/material.dart';  

        class login extends StatelessWidget {
          const login({ Key? key }) : super(key: key);
        
          @override
          Widget build(BuildContext context) {
            return Scaffold(
              backgroundColor: Colors.lightBlue[300],
              body:Center(
                
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                  
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [                    
                      Text("Selamat Datang",
                       style:TextStyle(fontSize: 30, fontWeight: FontWeight.w700),),
                       SizedBox(height: 10),
                      Text("Login Sekarang Untuk Melanjutkan", 
                      style: TextStyle(fontSize: 12),),
                      SizedBox(height: 64,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Login", 
                          style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w700)
                            ),
                            SizedBox(height: 10,),
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none
                                ),

                              ))


                        ],
                      )
                    ],
                  ),
                ),
              )
            
            );
          }
        }