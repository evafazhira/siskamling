import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'data_warga.dart';

class TambahWarga extends StatelessWidget {
  TambahWarga({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: IconButton(
            icon: const Icon(Icons.arrow_back, size: 35.0),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30.0),
            child: IconButton(
              icon: const Icon(
                Icons.person,
                size: 35.0,
              ),
              onPressed: () {
                // Add your profile icon onPressed logic here
              },
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "Tambah Data Warga",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 15, 0, 76),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 35),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    border: Border.all(color: Colors.black45, width: 1.0),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Masukkan Nama',
                      hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                      contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 16),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 35),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  width: double.infinity,
                  height: 75, // Contoh ukuran tinggi yang ditambahkan
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    border: Border.all(color: Colors.black45, width: 1.0),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Masukkan Nomer Rumah',
                      hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                      contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 16),
                      prefixIcon: Icon(
                        Icons.location_on_outlined,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: GestureDetector(
                  onTap: () {
                    // Tambahkan logika untuk submit di sini
                  },
                  child: Container(
                    width: 75,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 98, 55, 255),
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(
                        color: Color.fromARGB(255, 98, 55, 255),
                        width: 2.0,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Submit",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
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
