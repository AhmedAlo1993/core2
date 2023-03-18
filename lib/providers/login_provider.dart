

import 'package:firstapp/models/user.dart';
import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier {

  User? currentUser ;
    bool isValidEmail(String email) {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(email);
    
  }

  Future<void>? login(String email, String pass){
    currentUser!.email = email;
    currentUser!.password =pass;

    // if(currentUser.email == api.email  &&copo pas){
    //   Navigator.push(context, route)
    // }  Rex
  }
}