import 'package:flutter/material.dart';
import 'package:patientapp/services/services.dart';
class Addpg extends StatefulWidget {
  const Addpg({super.key});

  @override
  State<Addpg> createState() => _AddpgState();
}

class _AddpgState extends State<Addpg> {
  final TextEditingController name=new TextEditingController();
  final TextEditingController mobile=new TextEditingController();
  final TextEditingController symptoms=new TextEditingController();
  final TextEditingController status=new TextEditingController();
  void sentbutton()async {
    final response = await PostApiservice().sentData(name.text, mobile.text, symptoms.text, status.text);


    if (response['status'] == 'success') {
      print("sucessfully add");
    }
    else {
      print("error");
    }
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text("Add page"),
        ),
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: 800,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Colors.pink.withOpacity(0.3),
                      Colors.white.withOpacity(0.3),

                    ]
                )
            ),
            child: Column(
                children: [
                  TextField(
                    controller:name,
                    decoration: InputDecoration(
                      hintText: "Name",
                      labelText: "Name",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    controller: mobile,
                    decoration: InputDecoration(
                      hintText: "Mobile",
                      labelText: "mobile",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    controller: symptoms,
                    decoration: InputDecoration(
                      hintText: "Symptoms",
                      labelText: " Symptoms",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    controller: status,
                    decoration: InputDecoration(
                      hintText: "Status",
                      labelText: "Status",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 10,),
                  SizedBox(
                    height: 50,
                    width: 200,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amberAccent,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          )
                      ),

                      onPressed: (){
                        sentbutton();

                      },
                      child:Text( "Submit")
                      ,
                    ),
                  ),]
            ),
          ),
        ),
      ),
    );
  }
}
