import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

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
              'REGISTER\nNOW',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 60.0,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            Container(
              margin: const EdgeInsets.all(15.0),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Username',
                ),
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(15.0),
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
              margin: const EdgeInsets.all(15.0),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Phone',
                ),
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(15.0),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Password',
                ),
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              height: 60.0,
              margin: const EdgeInsets.only(left: 200, right: 15),
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(45.0),
                        side: const BorderSide(color: Colors.black),
                      ))),
                  onPressed: () {},
                  child: Row(
                    children: const [
                      Text(
                        'REGISTER',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Icon(
                        Icons.paste,
                      )
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
