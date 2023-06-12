import 'package:flutter/material.dart';
import 'package:social_app/signup.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 113, 6, 92),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Icon(Icons.star, size: 90, color: Colors.grey),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)),
                  labelText: "Email",
                  prefixIcon: Icon(Icons.person)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  labelText: "Password",
                  prefixIcon: Icon(Icons.lock)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2)),
                      backgroundColor: Colors.red,
                      textStyle: TextStyle(fontSize: 25)),
                  onPressed: () {},
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  )),
            ),
          ),
          TextButton(onPressed: () {}, child: Text("Signin with OTP")),
          Row(
            children: [
              TextButton(onPressed: () {}, child: Text("forhot pass !")),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpScreen()),
                    );
                  },
                  child: Text("Sign Up"))
            ],
          )
        ],
      ),
    );
  }
}
