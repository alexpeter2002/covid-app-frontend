import 'package:flutter/material.dart';
import 'package:patientapp/model/model.dart';
import 'package:patientapp/services/services.dart';

class Viewpg extends StatefulWidget {
  const Viewpg({super.key});

  @override
  State<Viewpg> createState() => _ViewpgState();
}

class _ViewpgState extends State<Viewpg> {
  Future<List<Posts>> ? data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data=PostApiservice().getPost();
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text("Viewpage"),
        ),
        body: FutureBuilder(
            future: data,
            builder: (context,snapshot) {
              if(snapshot.hasData && snapshot.data!.isNotEmpty) {
                return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (value, index) {
                      return Card(
                        child: Column(
                          children: [
                            ListTile(
                              //leading: Icon(Icons.account_box_rounded),
                              leading: CircleAvatar(
                                child: Text(snapshot.data![index].name.toString()[0]),
                              ),
                              title: Text("Name:"+snapshot.data![index].name.toString()),
                              subtitle: Text("mobile:"+snapshot.data![index].mobile.toString()+ '\n'+"symptoms:"+snapshot.data![index].symptoms.toString()+'\n'+"status:"+snapshot.data![index].status.toString()),
                            )
                          ],
                        ),
                      );
                    }
                );
              }
              else {
                return CircularProgressIndicator();
              }
            }),
      ),
    );


  }
}

