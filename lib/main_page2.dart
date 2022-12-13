
import 'package:cleaning/color_schema.dart';
import 'package:cleaning/pengajuan.dart';
import 'package:flutter/material.dart';
import 'package:cleaning/login.dart';


class MainPage extends StatefulWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Lontar Lab Foundation",
        style:TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w700,
        )
      ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: ListView(
          children: [
            const SizedBox(
              height: 30,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Pilih Menu',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
           
            Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap:() => Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return const login();
                },
                ),
                ),
                child: Column(
                 children:[ Container(
                  height: 130,
                  width: MediaQuery.of(context).size.width * 0.40,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25),
                      ),
                      image: const DecorationImage(
                     image: AssetImage('assets/image/login.png'),
                     ),
                      color: Colors.white,
                    ),
                ),
                const SizedBox(
                   height: 10,
                 ),
                 const Text('Login',
                 style: TextStyle(
                   fontWeight: FontWeight.w900,
                 ),
                 ),
                ],
                ),
                 
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
   Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap:() => Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return const pengajuan();
                },
                ),
                ),
                child: Column(
                 children:[ Container(
                  height: 130,
                  width: MediaQuery.of(context).size.width * 0.40,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25),
                      ),
                      image: const DecorationImage(
                     image: AssetImage('assets/image/pengajuan.png'),
                     ),
                      color: Colors.white,
                    ),
                ),
                const SizedBox(
                   height: 10,
                 ),
                 const Text('Pengajuan',
                 style: TextStyle(
                   fontWeight: FontWeight.w900,
                 ),
                 ),
                ],
                ),
                 
              )
            ],
          ),
          ],
          
        ),
      ),
      
    ),
    );
  }
}