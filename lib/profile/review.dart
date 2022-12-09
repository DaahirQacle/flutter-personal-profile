import 'package:challenge1/profile/card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Review extends StatelessWidget {
  const Review({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Color(0x8181),
            elevation: 0,
            leading: Icon(Icons.blur_on, color: Colors.black45),
            title: Text(
              "Just Alumni",
              style: TextStyle(color: Colors.black),
            ),
            centerTitle: true,
            actions: [
              Icon(Icons.notifications, color: Colors.black45),
              Stack(
                children: [
                  Container(
                    width: 25,
                    height: 25,
                    margin: EdgeInsets.only(top: 10, right: 10),
                    padding: EdgeInsets.all(4),
                    child: Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.red),
                      child: Text(
                        '7',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ]),
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(top: 30),
              child: ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                      // border: Border.all(width: 1, color: Colors.blue),
                      // borderRadius: BorderRadius.circular(15),
                      shape: BoxShape.circle),
                  margin: EdgeInsets.only(top: 20),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/mine.jpeg',
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                title: Text(
                  'Daahir Mohamed Ali',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("C119156"),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 90,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sign Out',
                    style: TextStyle(color: Colors.red),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Card(
                elevation: 0,
                child: Column(
                  children: [
                    ListTile(
                      title: Text('Dark Mode'),
                      trailing: Icon(Icons.toggle_off),
                      dense: true,
                      onTap: () {},
                    ),
                    ListTile(
                      onTap: () {},
                      dense: true,
                      title: Text('Language'),
                      trailing: Icon(
                        Icons.add,
                      ),
                      iconColor: Colors.red,
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Card(
                elevation: 0,
                child: Column(
                  children: [
                    card(icon: Icons.arrow_forward_ios, title: "My Donation"),
                    card(icon: Icons.arrow_forward_ios, title: "Favorite"),
                    card(icon: Icons.arrow_forward_ios, title: "Favorite Paper")
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Card(
                elevation: 0,
                child: Column(
                  children: [
                    card(
                        icon: Icons.arrow_forward_ios,
                        title: "Privacy & Terms"),
                    card(
                        icon: Icons.arrow_forward_ios, title: "About Developer")
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
