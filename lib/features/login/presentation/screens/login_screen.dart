import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Top right corner image
          Positioned(
            top: 0,
            right: 0,
            child: Transform.rotate(
              angle: 3.14,
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage("assets/images/login_background.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          // Bottom left corner image
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: AssetImage("assets/images/login_background.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 60),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Zamalek",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ),
            ],
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(),
                  TextFormField(),
                  ElevatedButton(onPressed: () {}, child: Text("login"))
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            right: 50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "register",
                ),
                Icon(Icons.add),
                Icon(Icons.add),
                Icon(Icons.add),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
