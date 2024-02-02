import 'package:flutter/material.dart';

class ArsipLaporan extends StatelessWidget {
  const ArsipLaporan({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: IconButton(
            icon: Icon(Icons.arrow_back, size: 35.0),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30.0),
            child: IconButton(
              icon: Icon(
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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start, // Align content to the left
            children: [
              const SizedBox(
                height: 35,
              ),
              const Center(
                child: Text(
                  "Arsip Laporan",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 15, 0, 76),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 80.0),
                    child: Container(
                      width: 100,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 149, 0),
                        borderRadius: BorderRadius.circular(17.0),
                        border: Border.all(
                          color: Color.fromARGB(255, 255, 149, 0),
                          width: 2.0,
                        ),
                      ),
                      alignment: Alignment.center,
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(
                          "Terbaru",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Container(
                    width: 100,
                    height: 35,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 130, 20, 255),
                      borderRadius: BorderRadius.circular(17.0),
                      border: Border.all(
                        color: Color.fromARGB(255, 130, 20, 255),
                        width: 2.0,
                      ),
                    ),
                    alignment: Alignment.center,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                      "Arsip",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
               const SizedBox(
             height: 30,
              ),
             
            Padding(
  padding: const EdgeInsets.all(12.0),
  child: Center(
    child: Container(
      width: 250,
      height: 180,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 216, 216, 216),
        borderRadius: BorderRadius.circular(25.0),
        border: Border.all(
          color:Color.fromARGB(255, 216, 216, 216),
          width: 2.0,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Image(
              image: AssetImage('assets/images/maling.jpeg'),
              width: 40,
              height: 40,
              fit: BoxFit.contain,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Text(
              "Data Warga",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
         
        ],
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
