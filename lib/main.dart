import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage()
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isHidden = true;
  TextEditingController emailC = TextEditingController();
  TextEditingController passwordC = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField Example"),
        leading: FlutterLogo(size: 20),
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(30),
          children:[ 
            TextField(
            autocorrect: false,
            controller: emailC,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              label: Text("Email"),
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.email),
            ),
            ),
            SizedBox(height: 20),
            TextField(
            autocorrect: false,
            controller: passwordC,
            obscureText: isHidden,
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              labelText: "Password",
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.lock),
              suffixIcon: IconButton(
                onPressed: (){
                  setState(() {
                    isHidden = !isHidden;
                  });
                }, 
                icon: Icon(
                  isHidden ? Icons.visibility : Icons.visibility_off
                )),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: (){
              print("Email: ${emailC.text} , Password: ${passwordC.text}");
            }, 
            child: Text("Login"),
            style: ElevatedButton.styleFrom(
              minimumSize: Size.fromHeight(50),
              foregroundColor: Colors.white,
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5)
              )
              ),
            )
          ]
        ),
      ),
    );
  }
}