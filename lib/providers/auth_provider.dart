import 'package:flutter/cupertino.dart';
import 'package:pringgosadventure/models/user_model.dart';
import 'package:pringgosadventure/services/auth_service.dart';

class AuthProvider with ChangeNotifier {
  UserModel _user;

  UserModel get user => _user;

  set user(UserModel value) {
    _user = value;
    notifyListeners();
  }

  Future<bool> register({
    String name,
    String email,
    String username,
    String password,
  })async{
    try{
      UserModel user = await AuthService().register(
        name: name,
        email: email,
        username: username,
        password: password,
      );
      _user = user;
      return true;
    }catch(e){
      print(e);
      return false;

    }
  }

  Future<bool> login({
    String email,
    String password,
  })async{
    try{
      UserModel user = await AuthService().login(
        email: email,
        password: password,
      );
      _user = user;
      return true;
    }catch(e){
      print(e);
      return false;

    }
  }
}