import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'nanai ',
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white10,
          title: Text('Profile'),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 25,
          )),
      body: Container(
        color: Colors.white10,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(height: 40),
              CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('assets/images/nilna.jpeg'),
              ),
              const SizedBox(height: 20),
              itemProfile('NAMA', 'NILNA RUSYDA WIDYANINGSIH',
                  CupertinoIcons.person_fill),
              const SizedBox(height: 10),
              itemProfile('HP', '085747593331', CupertinoIcons.phone_fill),
              const SizedBox(height: 10),
              itemProfile('ALAMAT', 'PEKALONGAN', CupertinoIcons.location_fill),
              const SizedBox(height: 10),
              itemProfile(
                  'EMAIL', 'nana123@gmail.com', CupertinoIcons.mail_solid),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(15),
                    ),
                    child: const Text('kembali ke Login')),
              )
            ],
          ),
        ),
      ),
    );
  }

  itemProfile(String title, String subtitle, IconData iconData) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.blue.shade50,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 5),
                color: Colors.blue,
                spreadRadius: 2,
                blurRadius: 10)
          ]),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(iconData),
        trailing: Icon(Icons.arrow_forward, color: Colors.blue),
        tileColor: Colors.blue,
      ),
    );
  }
}
