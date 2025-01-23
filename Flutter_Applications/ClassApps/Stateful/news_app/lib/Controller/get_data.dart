// import "dart:convert";
// import "dart:developer";

// import "package:http/http.dart" as http;

// class GetNews{
//   // static 
//  static getData()async{

//     try{
//       Uri url=Uri.parse("https://newsdata.io/api/1/latest?apikey=pub_65602d0be076cdba2fa32938ade0fc7a7df05&language=en");
//       http.Response response= await http.get(url);
//       newsData=await json.decode(response.body);

//       log("------------------------------${newsData["results"].length}");
  
     
//     }catch (er){
//       log("error");
//       log(er.toString());
     
//     }

//   }
// }