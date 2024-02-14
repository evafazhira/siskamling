import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:siskamling/screens/user/pencurian/notifications_widget.dart';

class Pencurian extends StatefulWidget {

  @override
  State<Pencurian> createState() => _PencurianState();
}

class _PencurianState extends State<Pencurian> {
  
  @override
  void initState() {
    super.initState();
    NotificationWidget.init();
  }

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding:
              const EdgeInsets.only(left: 30.0), // Adjust the padding as needed
          child: IconButton(
            icon: Icon(Icons.arrow_back, size: 35.0),
            onPressed: () {
              // Add your back button onPressed logic here
              Navigator.pop(context); // Example to navigate back
            },
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 30.0,
            ), // Adjust the padding as needed
            child: IconButton(
              icon: const Icon(
                Icons.person,
                size: 35.0, // Adjust the size as needed
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
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "Data Rumah",
                    style: GoogleFonts.josefinSans(
                      fontSize: 30,
                      fontWeight: FontWeight.bold, // Make the font bold
                      color: Color.fromARGB(255, 15, 0, 76),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      // Tampilkan sweet alert ketika pengguna menekan rumah
                     showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text("Kamu Yakin?"),
                          content: const Text("Kamu ingin melaporkan kejadian ini?"),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop(); // Close the dialog
                              },
                              child: const Text("Tidak"),
                            ),
                            TextButton(
                              onPressed: () {
                                NotificationWidget.showNotification(
                                  title: "Pencurian Terjadi!",
                                  body: "terjadi di rumah no 1",
                                  
                                );
                              },
                              child: const Text("Laporkan"),
                            ),
                          ],
                        );
                      },
                      );
                    },
                  child: Container(
                    width: 320,
                    height: 75,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 211, 211, 211),
                      borderRadius: BorderRadius.circular(17.0),
                      border: Border.all(
                        color: Color.fromARGB(255, 211, 211, 211),
                        width: 2.0,
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        "Rumah No.1",
                        style: GoogleFonts.kronaOne(
                          fontSize: 20,
                          fontWeight: FontWeight.bold, // Make the font bold
                          color: Color.fromARGB(255, 15, 0, 76),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
              ),
              const SizedBox(
                height: 3,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(
                  child: Container(
                    width: 320,
                    height: 75,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 211, 211, 211),
                      borderRadius: BorderRadius.circular(17.0),
                      border: Border.all(
                        color: const Color.fromARGB(255, 211, 211, 211),
                        width: 2.0,
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        "Rumah No.2",
                        style: GoogleFonts.kronaOne(
                          fontSize: 20,
                          fontWeight: FontWeight.bold, // Make the font bold
                          color: Color.fromARGB(255, 15, 0, 76),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(
                  child: Container(
                    width: 320,
                    height: 75,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 211, 211, 211),
                      borderRadius: BorderRadius.circular(17.0),
                      border: Border.all(
                        color: Color.fromARGB(255, 211, 211, 211),
                        width: 2.0,
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        "Rumah No.3",
                        style: GoogleFonts.kronaOne(
                          fontSize: 20,
                          fontWeight: FontWeight.bold, // Make the font bold
                          color: Color.fromARGB(255, 15, 0, 76),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(
                  child: Container(
                    width: 320,
                    height: 75,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 211, 211, 211),
                      borderRadius: BorderRadius.circular(17.0),
                      border: Border.all(
                        color: Color.fromARGB(255, 211, 211, 211),
                        width: 2.0,
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        "Rumah No.4",
                        style: GoogleFonts.kronaOne(
                          fontSize: 20,
                          fontWeight: FontWeight.bold, // Make the font bold
                          color: Color.fromARGB(255, 15, 0, 76),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(
                  child: Container(
                    width: 320,
                    height: 75,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 211, 211, 211),
                      borderRadius: BorderRadius.circular(17.0),
                      border: Border.all(
                        color: Color.fromARGB(255, 211, 211, 211),
                        width: 2.0,
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        "Rumah No.5",
                        style: GoogleFonts.kronaOne(
                          fontSize: 20,
                          fontWeight: FontWeight.bold, // Make the font bold
                          color: Color.fromARGB(255, 15, 0, 76),
                        ),
                        textAlign: TextAlign.center,
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