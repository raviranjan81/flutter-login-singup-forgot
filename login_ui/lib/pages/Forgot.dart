import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyForgot extends StatefulWidget {
  const MyForgot({super.key});

  @override
  State<MyForgot> createState() => _MyForgotState();
}

class _MyForgotState extends State<MyForgot> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/register.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(top: 120, left: 35),
              child: Text(
                'Forgot \nYour password',
                style: TextStyle(fontSize: 30, color: Colors.white, height: 1),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.5,
                  left: 35,
                  right: 35),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: 'Email',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sing in',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black87,
                            fontWeight: FontWeight.w700),
                      ),
                      CircleAvatar(
                        child: IconButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'login');
                            },
                            icon: Icon(
                              Icons.arrow_circle_right_outlined,
                              color: Colors.black87,
                            )),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
