import 'package:flutter/material.dart';
import 'package:siskamling/screens/user/kebakaran/kebakaran.dart';
import 'package:siskamling/screens/user/pencurian/pencurian.dart';
import 'package:siskamling/screens/user/profile/user_profile.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:siskamling/screens/user/lapor/controllers/lapor_controllers.dart';

class Lapor extends GetView<LaporController> {
  

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
                Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => UserProfile()),
              );
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
             height: 100,
              ),
              GestureDetector(
                  onTap: () {
                    // Navigate to the next page or perform the desired action
                    // Example using Navigator to push a new page:
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Pencurian()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      width: 400,
                      height: 170,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 195, 190, 185),
                        borderRadius: BorderRadius.circular(25.0),
                        border: Border.all(
                          color: const Color.fromARGB(255, 195, 190, 185),
                          width: 2.0,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: Text(
                              "Pencurian",
                              style: GoogleFonts.josefinSans(
                                fontSize: 35,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 0.0),
                            child: Image(
                              image: AssetImage('assets/images/maling.jpeg'),
                              width: 200,
                              height: 120,
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
                    MaterialPageRoute(builder: (context) => Kebakaran()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Center(
                    child: Container(
                      width: 400,
                      height: 170,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 251, 129, 16),
                        borderRadius: BorderRadius.circular(25.0),
                        border: Border.all(
                          color: const Color.fromARGB(255, 251, 129, 16),
                          width: 2.0,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: Text(
                              "Kebakaran",
                                style: GoogleFonts.josefinSans(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                              ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 0.0),
                            child: Image(
                              image: AssetImage('assets/images/api.jpeg'),
                              width: 200,
                              height: 100,
                              fit: BoxFit.contain,
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