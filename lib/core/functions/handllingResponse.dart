import 'package:ecommercee/core/class/StatusRequest.dart';
import 'package:http/http.dart';

handllingResponse(Response){
  if(Response is StatusRequest){
    return Response;
  }
  else{
    return StatusRequest.success;
  }
}