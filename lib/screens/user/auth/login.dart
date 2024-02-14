import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:siskamling/screens/user/auth/controllers/auth_controllers.dart';

class Login extends GetView<AuthController> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: ListView(
          children: [
            SizedBox(height: 30),
            Image.asset(
              'assets/images/logo.jpeg',
              width: 300, // Set the desired width
              height: 250, // Set the desired height
              fit: BoxFit.contain,
            ),
            SizedBox(height: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Email',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 15),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    border: Border.all(color: Colors.black45, width: 1.0),
                  ),
                  child: TextFormField(
                    controller: controller.email,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Masukkan email',
                      hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 16),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty){
                        return 'Email Tidak Boleh Kosong';
                      }
                      return null;
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),
            const Text(
              'Password',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromRGBO(255, 255, 255, 1),
                border: Border.all(color: Colors.black45, width: 1.0),
              ),
              child: TextFormField(
                controller: controller.password,
                obscureText: true,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Masukkan password',
                  hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16, vertical: 17),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Kata Sandi Kosong';
                  }
                  if (value.length < 6) {
                    return ' Panjang Password Harus Lebih Dari 6 Karakter';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(height: 45),
            Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 12,
                          height: 9,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                Container(
                    width: double.infinity,
                    height: 48,
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    child: FilledButton(
                      style: FilledButton.styleFrom(
                        backgroundColor: const Color(0xFFA9C6D1),
                      ),
                      onPressed: () async {
                        print("loading");
                      await controller.login();
                      },
                      child: const Text(
                        "MASUK",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    )),
                const SizedBox(height: 50,),
                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Tidak punya akun ? ",
                    style: TextStyle(fontSize: 20),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.offNamed('/register');
                    },
                    child: const Text(
                      "Daftar",
                      style: TextStyle(fontSize: 20, color: Colors.blue),
                    ),
                  )
                ],
              )
              ],
            ),
            ),
    );
  }
}