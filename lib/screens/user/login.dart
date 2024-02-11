import 'package:flutter/material.dart';
import 'package:siskamling/utils/utils.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _isLoading = false;

  Future<void> signIn({
    required final email,
    required final password,
  })async {
    setState(() {
      _isLoading = true;
    });

    try {
      await client.auth.signInWithPassword(
        email: email,
        password: password,
      );
      if (mounted) {
        Navigator.popAndPushNamed(context, '/lapor');
      }
    } on AuthException catch (error) {
      context.showSnackBar(error.message);
    } catch (error) {
      context.showSnackBar('Gagal Login');
    }

    setState(() {
      _isLoading = false;
    });
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Form(
          key: _formKey,
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
                  'Username',
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
                    validator: (value) {
                      if (value == null || value.isEmpty){
                        return 'Tolong Masukkan Email Terdaftar';
                      }
                      return null;
                    },
                    controller: _emailController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Masukkan email',
                      hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 16),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            Text(
              'Password',
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
                  validator: (value) {
                    if (value == null || value.isEmpty){
                      return 'Tolong Masukkan Password Yang Benar';
                    }
                    return null;
                    },
                  controller: _passwordController,
                  decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Masukkan password',
                  hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16, vertical: 17),
                ),
                obscureText: true,
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            _isLoading ? SizedBox(
              child: CircularProgressIndicator(),
            )
            : ElevatedButton(
              onPressed: () {
                final isValid = _formKey.currentState?.validate();

                if (isValid != true) {
                  return;
                }

                final res = signIn(
                  email: _emailController.text, 
                  password: _passwordController.text
                );

                res.then((value) {
                  _emailController.clear();
                  _passwordController.clear();
                });
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200.0, 55.0),
                primary: Color.fromARGB(255, 21, 134, 233),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: Text(
                'Masuk',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
            ),
          ],
          ),
        ),
      ),
    );
  }
}
