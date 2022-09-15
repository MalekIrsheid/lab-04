import 'package:flutter/material.dart';
import 'package:lab4/androidd.dart';
import 'package:lab4/ios.dart';

void main() {
  runApp(MaterialApp(home: myApp()));
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Smart Phone Store",
          style: TextStyle(color: Colors.blueAccent),
        ),
        backgroundColor: Colors.blue.shade50,
      ),
      body: Container(
        width: 500,
        height: 1000,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://i.pinimg.com/564x/a5/09/1a/a5091a215c1a3a5ef99a99e678c05aff.jpg"),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              width: 350,
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: Colors.grey),
              child: Container(
                alignment: Alignment.center,
                width: 300,
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.zero,
                  color: Colors.grey.shade900,
                ),
                child: Text(
                  "Welcome to my store",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white70),
                ),
              ),
            ),
            Divider(
              height: 200,
            ),
            ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return androidd();
                      },
                    ));
                  });
                },
                icon: Icon(Icons.android),
                label: Text(
                  "Android ",
                  style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                )),
            ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return ios();
                      },
                    ));
                  });
                },
                icon: Icon(Icons.apple),
                label: Text(
                  "IOS ",
                  style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                )),
          ],
        ),
      ),
    );
  }
}
