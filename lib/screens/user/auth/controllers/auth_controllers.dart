import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:siskamling/common/controllers/app_controller.dart';
import 'package:siskamling/resources/databases/user_database.dart';
import 'package:siskamling/resources/models/user_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthController extends GetxController {
  AppController app = Get.find<AppController>();
  final GoTrueClient _auth = Supabase.instance.client.auth;
  final GetStorage _box = GetStorage();

  late TextEditingController email;
  late TextEditingController username;
  late TextEditingController password;

  RxBool obscureText = false.obs;

  @override
  void onInit() {
    super.onInit();
    email = TextEditingController();
    username = TextEditingController();
    password = TextEditingController();
  }

  // @override
  // void onClose() {
  //   super.onClose();
  //   email.dispose();
  //   username.dispose();
  //   name.dispose();
  //   password.dispose();
  // }

  Future<void> signup() async {
    print('daftar');
    try {
      AuthResponse response =
        await _auth.signUp(email: email.text, password: password.text);

      if (response.user != null) {
        UserModel userModel = UserModel(
          email: email.text,
          username: username.text,
          password: password.text,
          role: "user",
          createdAt: DateTime.now().toIso8601String(),
        );

        var result = await UserDatabase().insert(userModel: userModel);
        UserModel userModelNew = UserModel.fromMap(result[0]);
        await _box.write("user", userModelNew.toMap());
        Get.offNamed('/data_warga');
      } else {
        print("Daftar Gagal");
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> login() async {
    try {
      AuthResponse response = await _auth.signInWithPassword(
          email: email.text, password: password.text);

      if (response.user != null) {
        UserModel? userModel = await UserDatabase().select(email: email.text);
        if (userModel != null) {
          print(userModel.toMap());
          await _box.write("user", userModel.toMap());

          app.isAuthenticated.value = true;
        } else {
          print("User tidak ditemukan");
        }
      } else {
        print("User tidak ditemukan");
      }
    } catch (e) {
      print("Login Gagal: $e");
    }
  }

  Future<void> logout() async {
    try {
      if (_box.read("user") != null) {
        _box.remove('user');
      }
      await _auth.signOut();

      app.isAuthenticated.value = false;
    } catch (e) {
      print(e);
    }
  }
}