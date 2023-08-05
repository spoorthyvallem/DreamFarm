import 'dart:async';

import 'package:dreamfarm/admin/Homestore.dart';
import 'package:flutter/material.dart';

class ItemEdited extends StatefulWidget {
  const ItemEdited({super.key});

  @override
  State<ItemEdited> createState() => _ItemEditedState();
}

class _ItemEditedState extends State<ItemEdited> {
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(milliseconds: 3000), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeStoreWidget()));
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: height * 0.2,
                width: height * 0.2,
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.done,
                  color: Colors.white,
                  size: height * 0.1,
                ),
              ),
            ),
            Text("Order Updated"),
          ],
        ),
      ),
    );
  }
}
