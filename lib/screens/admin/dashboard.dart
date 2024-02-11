import 'package:flutter/material.dart';
import 'package:siskamling/screens/admin/arsip_laporan.dart';
import 'package:siskamling/screens/admin/data_warga.dart';
import 'package:google_fonts/google_fonts.dart';

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
                height: 130,
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
                  child: Center(
                    child: Container(
                      width: 350,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 130, 13),
                        borderRadius: BorderRadius.circular(25.0),
                        border: Border.all(
                          color: Color.fromARGB(255, 255, 130, 13),
                          width: 2.0,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Text(
                              "Data Warga",
                              style: GoogleFonts.kronaOne(
                                fontSize: 25,
                                color: Color.fromARGB(255, 11, 0, 71),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 12.0),
                            child: Image(
                              image: AssetImage('assets/images/datawarga.png'), // Ganti dengan path gambar yang sesuai
                              width: 80,
                              height: 80,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 35,
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
                      width: 350,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 211, 127, 144),
                        borderRadius: BorderRadius.circular(25.0),
                        border: Border.all(
                          color:  Color.fromARGB(255, 211, 127, 144),
                          width: 2.0,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Text(
                              "Arsip Laporan",
                              style: GoogleFonts.kronaOne(
                                fontSize: 25,
                                color: Color.fromARGB(255, 11, 0, 71),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 6.0),
                            child: Image(
                              image: AssetImage('assets/images/arsip.png'), // Ganti dengan path gambar yang sesuai
                              width: 70,
                              height: 70,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 35,
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
                  child: Center(
                    child: Container(
                      width: 350,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 124, 124, 124),
                        borderRadius: BorderRadius.circular(25.0),
                        border: Border.all(
                          color: Color.fromARGB(255, 124, 124, 124),
                          width: 2.0,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Text(
                              "Data Warga",
                              style: GoogleFonts.kronaOne(
                                fontSize: 25,
                                color: Color.fromARGB(255, 11, 0, 71),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 12.0),
                            child: Image(
                              image: AssetImage('assets/images/datauser.png'), // Ganti dengan path gambar yang sesuai
                              width: 60,
                              height: 60,
                            ),
                          ),
                        ],
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
