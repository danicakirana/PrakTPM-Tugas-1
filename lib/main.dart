import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Login Screen"),
          ),
          body: ListView(
            children: <Widget>[
              Padding(child: Image.asset('assets/logo.png', width: 200, height: 200),
                  padding: const EdgeInsets.fromLTRB(20, 50, 20, 50)
              ),
              Padding(padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0)
                        ),
                        hintText: "Email"
                    ),
                  )
              ),
              Padding(padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0)
                        ),
                        hintText: "Password"
                    ),
                  )
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                child: ElevatedButton(onPressed: (){},
                    child: const Text("Login In"),
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(450, 40))
                ),
              ),
              const Padding(
                  padding: EdgeInsets.fromLTRB(20, 15, 20, 0),
                  child: Center(
                      child: Text("Forgot Password?",
                          style: TextStyle(color: Colors.grey))
                  )
              )
            ],
          )
      ),
    );
  }
}
