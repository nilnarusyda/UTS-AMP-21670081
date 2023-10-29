import 'package:flutter/material.dart';
import 'profilescreen.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white10,
          title: Text('Dashboard'),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 25,
          )),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(25),
        children: <Widget>[
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfileScreen()));
              },
              splashColor: Colors.black,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(Icons.school_outlined, size: 75, color: Colors.blue),
                    Text("Profile nana", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
