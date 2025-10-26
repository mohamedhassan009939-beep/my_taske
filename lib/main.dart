import 'package:flutter/material.dart';

import 'tasks_Screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Qoutes App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xffFFFFFF),
        primaryColor: const Color(0xff9810FA),
      ),
      home: const firstScreen(),
    );
  }
}

class firstScreen extends StatelessWidget {
  const firstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /* var onPressed2 = (Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => QuotesScreen(),
        )));*/
    var arrow_circle_right;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'assets/Frame 28 (1).png',
                width: 390,
                height: 482,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 79, right: 64),
                child: Text(
                  "Task Management &To-Do List",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xff24252C),
                      fontSize: 24,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 64),
                child: Text(
                  "This productive tool is designed to help you better manage your task project-wise conveniently!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xff6E6A7C),
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14)),
                      backgroundColor: const Color(0xff007AFF),
                      foregroundColor: const Color(0xffffffff),
                      fixedSize: const Size(331, 52)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TaskesScreen()),
                    );
                    //للتنقل للصفحه التانيه
                  },
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Text(
                            'Let’s Start',
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                        SizedBox(
                          width: 79,
                        ),
                        Image.asset(
                          "assets/Arrow - Left.png",
                          color: Color(0xffFFFFFF)
                          
                          ,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
