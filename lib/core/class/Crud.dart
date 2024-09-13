import 'dart:convert';

import 'package:dartz/dartz.dart';

import '../functions/checkInternet.dart';
import 'StatusRequest.dart';
import 'package:http/http.dart' as http;

class Crud {
  Future<Either<StatusRequest, Map>> postData(String link_url, Map data) async {
    try {
      if (await CheckInternt()) {
        var response = await http.post(Uri.parse(link_url), body: data);

        if (response.statusCode == 200 || response.statusCode == 201) {

print("===========");
          Map responsebody = jsonDecode(response.body);

print(responsebody);
          return Right(responsebody);
        } else {
          return const Left(StatusRequest.serverFailure);
        }
      } else {
        return const Left(StatusRequest.noInternet);
      }
    } catch (_) {
      return const Left(StatusRequest.serverFailure);
    }
  }

  Future<Either<StatusRequest, Map>> checkData(String link_url, Map data) async {
    try {
      if (await CheckInternt()) {
        var response = await http.post(Uri.parse(link_url), body: data);

        if (response.statusCode == 200 || response.statusCode == 201) {
          Map responsebody = jsonDecode(response.body);

          return Right(responsebody);
        }
        else {
          return const Left(StatusRequest.serverFailure);
        }
      } else {
        return const Left(StatusRequest.noInternet);
      }
    } catch (_) {
      return const Left(StatusRequest.failure);
    }
  }
  Future<Either<StatusRequest, Map>> updatPassword(String link_url, Map data) async {
    try {
      if (await CheckInternt()) {
        var response = await http.post(Uri.parse(link_url), body: data);

        if (response.statusCode == 200 || response.statusCode == 201) {


          Map responsebody = jsonDecode(response.body);


          return Left(StatusRequest.success);
        } else {
          return const Left(StatusRequest.serverFailure);
        }
      } else {
        return const Left(StatusRequest.noInternet);
      }
    } catch (_) {
      return const Left(StatusRequest.failure);
    }
  }


}
