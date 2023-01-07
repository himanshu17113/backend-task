import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:task/screens/take_test_screen.dart';
import 'package:task/utils/constants.dart';
import 'package:task/models/user.dart';
import 'package:task/utils/utils.dart';

class UserService {
  void signUpUser({
    required BuildContext context,
    //  required String email,
    required String password,
    required String name,
    required String cost,
    required String id,
    required String email,
    required String occupation,
    required String experience,
    required String writer,
    required String explain,
    required String location,
    required String skills,
    required String portfolio,
    required String feedback,
    //required String valid,
    // final String cost,
  }) async {
    try {
      User user = User(
        id: '',
        name: name,
        password: password,
        email: email,
        cost: cost,
        experience: experience,
        explain: explain,
        location: location,
        feedback: feedback,
        occupation: occupation,
        portfolio: portfolio,
        skills: skills,
        //  valid: valid ?? "mkv",
        writer: writer,
        // token: '',
      );

      http.Response res = await http.post(
        Uri.parse('${Constants.uri}/signup'),
        body: user.toJson(),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );

      httpErrorHandle(
        response: res,
        context: context,
        onSuccess: () {
          showSnackBar(
            context,
            'Account created! Login with the same credentials!',
          );
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => const testScreen(),
            ),
          );
        },
      );
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }
}
