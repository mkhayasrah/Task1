import 'package:flutter/material.dart';
import 'package:task/login.dart';
import 'signup.dart';

class Reset extends StatelessWidget {
  const Reset({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/si.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: [
            const Text(
              'RESET\nNOW',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 60.0,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 200,
            ),
            Container(
              margin: const EdgeInsets.all(20.0),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Email',
                ),
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              height: 70.0,
              margin: EdgeInsets.only(left: 200, right: 20),
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(45.0),
                        side: BorderSide(color: Colors.black),
                      ))),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text(
                        'RESET NOW',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Icon(
                        Icons.refresh,
                      )
                    ],
                  )),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
                margin: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Signup()),
                        );
                      },
                      child: const Text(
                        "Register",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                      },
                      child: const Text(
                        "LOGIN",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
