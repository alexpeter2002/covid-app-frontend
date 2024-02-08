import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:patientapp/model/model.dart';

class PostApiservice
{
  Future<dynamic>sentData(
      String Pname,
      String Pmobile,
      String Psymptoms,
      String Pstatus
      )
  async{
    var client=http.Client();
    var apiurl=Uri.parse("http://localhost:3001/api/patients/add");
    var response=await client.post(apiurl,
        headers: <String,String>{
          "Content-Type":"application/json; charset=UTF-8"
        },
        body: jsonEncode(<String,String>{


          "Name": Pname,
          "Mobile": Pmobile,
          "Symptoms": Psymptoms,
          "Status": Pstatus,


        })


    );
    if(response.statusCode==200)
    {
      return json.decode(response.body);
    }
    else{
      throw Exception("failure");
    }

  }
  Future <List<Posts>> getPost() async{
    var Client=http.Client();
    var apiurl=Uri.parse("http://localhost:3001/api/patients/view");
    var response=await Client.get(apiurl);
    if(response.statusCode==200)
    {
      var resp=response.body;
      return postsFromJson(response.body);
    }
    else{
      return[];
    }

  }

}