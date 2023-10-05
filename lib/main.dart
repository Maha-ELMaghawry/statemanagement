import 'package:flutter/material.dart';
import 'package:statemanagement/Mysecondscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var user = TextEditingController();
  var password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Center(child: Text('Login')),
      ), //widget.title +
      body: Center(
        child: ListView(
          children: [
            const SizedBox( height: 60,),
            const Icon(Icons.account_box, size: 100,),
            const SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: user,
                decoration: const InputDecoration(
                  filled: true,
                  labelText: 'Username',
                ),
              ),
            ),
// spacer
            const SizedBox(height: 12.0),
// [Password]
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: password,
                decoration: const InputDecoration(
                  filled: true,
                  labelText: 'Password',
                ),
                obscureText: true,
              ),
            ),

            OverflowBar(
              alignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  child: const Text('CANCEL'),
                  onPressed: () {
                    user.clear();
                    password.clear();
                  },
                ),
                ElevatedButton(
                  child: const Text(
                    "Next",
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Mysecondscreen(
                            data: "Welcome ${user.text}",
                            passdata: password.text,
                          ),
                        ));
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
