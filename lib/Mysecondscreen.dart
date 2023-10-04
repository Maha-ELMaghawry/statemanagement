import 'package:flutter/material.dart';

class Mysecondscreen extends StatefulWidget {
  var data;
  var passdata;
  Mysecondscreen({this.data, this.passdata, super.key});

  @override
  State<Mysecondscreen> createState() => _MysecondscreenState();
}

class _MysecondscreenState extends State<Mysecondscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text("Hello"),
              automaticallyImplyLeading: false,
          backgroundColor: Colors.pink.shade100,
          ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 60,),
            Text("${widget.data}"),
            Text("${widget.passdata}"),
            const SizedBox(height: 40,),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.house))
          ],
        ),
      ),
    );
  }
}
