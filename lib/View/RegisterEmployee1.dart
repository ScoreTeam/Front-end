import 'package:flutter/material.dart';

class RegEmp extends StatelessWidget {
  const RegEmp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.topLeft,
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Row(
              children: [
                SizedBox(
                  width: 50,
                ),
                Container(
                  width: 150,
                  height: 150,
                  child: Image(
                    image: AssetImage(
                      "images/logo.png",
                    ),
                    fit: BoxFit.fill,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  width: MediaQuery.of(context).size.width - 20,
                  height: MediaQuery.of(context).size.height / 13,
                  color: Colors.grey,
                  child: 
                  Row(),
                )
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}
