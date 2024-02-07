import 'package:flutter/material.dart';
import 'package:siskamling/admin/arsip_laporan.dart';
import 'package:siskamling/admin/data_warga.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        automaticallyImplyLeading: false,
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
             height: 125,
              ),
              GestureDetector(
                  onTap: () {
                    // Navigate to the next page or perform the desired action
                    // Example using Navigator to push a new page:
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DataWarga()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      width: 250,
                      height: 90,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 251, 129, 16),
                        borderRadius: BorderRadius.circular(25.0),
                        border: Border.all(
                          color: const Color.fromARGB(255, 251, 129, 16),
                          width: 2.0,
                        ),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 16.0),
                            child: Text(
                              "Data Warga",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 16.0),
                            child: Image(
                              image: AssetImage('assets/images/maling.jpeg'),
                              width: 40,
                              height: 40,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

              const SizedBox(
                height: 15,
              ),
               GestureDetector(
                onTap: () {
                  // Navigate to the next page or perform the desired action
                  // Example using Navigator to push a new page:
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ArsipLaporan()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Center(
                    child: Container(
                      width: 250,
                      height: 90,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 174, 104, 118),
                        borderRadius: BorderRadius.circular(25.0),
                        border: Border.all(
                          color: const Color.fromARGB(255, 174, 104, 118),
                          width: 2.0,
                        ),
                      ),
                      alignment: Alignment.centerLeft,
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(
                          "Arsip Laporan",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(
                  child: Container(
                    width: 250,
                    height: 90,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 142, 142, 142),
                      borderRadius: BorderRadius.circular(25.0),
                      border: Border.all(
                        color: const Color.fromARGB(255, 142, 142, 142),
                        width: 2.0,
                      ),
                    ),
                    alignment: Alignment.centerLeft,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        "Data User",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.left,
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
