import 'package:flutter/material.dart';

class landingpage extends StatefulWidget {
  @override
  State<landingpage> createState() => _landingpageState();
}

class _landingpageState extends State<landingpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons. bookmark), label: "Tersimpan"),
        BottomNavigationBarItem(icon: Icon(Icons. settings), label: "Pengaturan"),
          ],
        ),
        body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                    height: 135, width: double.infinity, color: Colors.lightBlue),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 7,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                  alignment: Alignment.topLeft,
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://bapenda.nganjukkab.go.id/simkswp/public/upload/logo-nganjuk2.png")),
                                      borderRadius: BorderRadius.circular(45),
                                     )),

                            ],
                          ),
                          Container(
                              alignment: Alignment.topRight,
                              child: Icon(
                                Icons.notifications_active,
                                color: Colors.white,
                                size: 30,
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                                width: 10,),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(180)),
                        child: TextField(
                          cursorHeight: 20,
                          autofocus: false,
                          decoration: InputDecoration(
                              hintText: "Cari",
                              prefixIcon: Icon(Icons.search),
                              border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 2),
                                  borderRadius: BorderRadius.circular(30))),
                        ),
                      ),
                    ),
                  ],
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
