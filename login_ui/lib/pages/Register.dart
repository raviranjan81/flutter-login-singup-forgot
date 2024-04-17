import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({super.key});

  @override
  State<MyRegister> createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/register.png'), fit: BoxFit.cover)),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(left: 35, top: 130),
                child: Text(
                  'Register \nyour account',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    height: 1,
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5,
                    right: 35,
                    left: 35,
                  ),
                  child: Column(
                    children: [
                      TextField(
                          decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              hintText: 'Name',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ))),
                      SizedBox(
                        height: 15,
                      ),
                      TextField(
                          decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              hintText: 'Email',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ))),
                      SizedBox(
                        height:15
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Password',
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Login',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.blueGrey.shade900,
                                fontWeight: FontWeight.bold),
                          ),
                          CircleAvatar(
                              child: IconButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'login');
                            },
                            icon: Icon(
                              Icons.arrow_circle_right,
                              color: Colors.black87,
                              size: 25,
                            ),
                          ))
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
