import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 125,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(
                  child: Container(
                    width: 300,
                    height: 121,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 230, 88, 12),
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: Color.fromARGB(255, 230, 88, 12),
                        width: 2.0,
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "Data Warga",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
               SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(
                  child: Container(
                    width: 300,
                    height: 121,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 174, 104, 118),
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: Color.fromARGB(255, 174, 104, 118),
                        width: 2.0,
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "Arsip Laporan",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
               SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(
                  child: Container(
                    width: 300,
                    height: 121,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 142, 142, 142),
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: Color.fromARGB(255, 142, 142, 142),
                        width: 2.0,
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "Data User",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
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
