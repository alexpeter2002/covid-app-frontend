import 'package:flutter/material.dart';
import 'package:patientapp/pages/add.dart';
class Menupg extends StatefulWidget {
  const Menupg({super.key});

  @override
  State<Menupg> createState() => _MenupgState();
}

class _MenupgState extends State<Menupg> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text("Doctors App"),
      ),
      body: Container(
        width: double.infinity,
        height: 800,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Colors.pink.withOpacity(0.3),
                  Colors.cyanAccent.withOpacity(0.3),
                ]
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.brown,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      )

                  ),
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Addpg()));

                  },
                  child: Text("Add")),
            ),
          ],
        ),
      ),
    );
  }
}


