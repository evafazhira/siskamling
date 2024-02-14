import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:siskamling/screens/user/auth/controllers/auth_controllers.dart';

class Register extends GetView<AuthController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                "REGISTER",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 15, 0, 76),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  width: 250,
                  height: 200,
                  fit: BoxFit.contain,
                ),
              ],
            ),
            const SizedBox(height: 45),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromRGBO(255, 255, 255, 1),
                      border: Border.all(color: Colors.black45, width: 1.0),
                    ),
                     child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      controller: controller.email,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Masukkan Email',
                        hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 16),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.grey,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'EmaiL Tidak Boleh Kosong';
                        }
                        return null;
                      }
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromRGBO(255, 255, 255, 1),
                      border: Border.all(color: Colors.black45, width: 1.0),
                    ),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      controller: controller.username,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Masukkan Username',
                        hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 16),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.grey,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Username Tidak Boleh Kosong';
                        }
                        final isValid = RegExp(r'^[A-Za-z0-9_]{3,24}$').hasMatch(value);
                          if (!isValid) {
                            return 'Panjang 3-24 dengan Alfanumerik atau Garis Bawah';
                        }
                        return null;
                        }
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromRGBO(255, 255, 255, 1),
                      border: Border.all(color: Colors.black45, width: 1.0),
                    ),
                    child: TextFormField(
                      controller: controller.password,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Masukkan Kata Sandi',
                        hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 16),
                        prefixIcon: Icon(
                          Icons.lock_outline,
                          color: Colors.grey,
                        ),
                        suffixIcon: Icon(
                          Icons.visibility,
                          color: Colors.grey,
                        ),                         
                      ),
                       validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Kata Sandi Tidak Boleh Kosong';
                        }
                          if (value.length < 6) {
                            return ' Kata Sandi Harus Lebih Dari 6 Karakter';
                          }
                            return null;
                          }
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 35),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: ElevatedButton(
                onPressed: () async {
                      print("loading");
                      await controller.signup();
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  primary: Color.fromARGB(255, 21, 134, 233),
                ),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'Daftar',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}