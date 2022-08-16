import 'package:flutter/material.dart';
import 'package:login/screen/login.dart';
import 'package:login/screen/register.dart';
import 'package:login/screen/feed.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text(
          "เข้าสู่ระบบ/สมัครสมาชิก",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 50, 10, 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return MainPage();
                      }));
                    },
                    icon: Icon(Icons.assistant_navigation),
                    label: Text(
                      "ฉันกำลังมองหาช่าง",
                      style: TextStyle(fontSize: 20),
                    )),
              ),
              Image.asset("assets/images/146manmechanic2_100581.png"),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return RegisterScreen();
                      }));
                    },
                    icon: Icon(Icons.add),
                    label: Text("สมัครสมาชิก",style: TextStyle(fontSize: 20),
                  )
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return LogisScreen();
                      }));
                    },
                    icon: Icon(Icons.login),
                    label: Text("เข้าสู่ระบบ",style: TextStyle(fontSize: 20),
                  )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
