import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class cardcat extends StatelessWidget {
  const cardcat({required this.data});
  final dynamic data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                color: Colors.white,
                child: Image.asset(
                  'images/categories/${data["name"]}.png',
                  height: 75,
                  width: 76.5,
                  fit: BoxFit.fill,
                )),
            Container(
              decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16))),
              height: 40.5,
              width: 115,
              child: Center(
                  child: Text(
                data["name"],
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
              )),
            )
          ],
        ),
      ),
    );
  }
}
