import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:siskamling/screens/admin/form_tambah_warga.dart';
import 'package:siskamling/screens/admin/form_detail_rumah.dart';

class DataWarga extends StatelessWidget {
  const DataWarga({Key? key});

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
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  "Data Warga",
                  style: GoogleFonts.josefinSans(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 15, 0, 76),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              _buildHouseContainer(context, "Rumah No.1"),
              _buildHouseContainer(context, "Rumah No.2"),
              _buildHouseContainer(context, "Rumah No.3"),
              _buildHouseContainer(context, "Rumah No.4"),
              _buildHouseContainer(context, "Rumah No.5"),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TambahWarga()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Center(
                    child: Container(
                      width: 100,
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ],
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

  Widget _buildHouseContainer(BuildContext context, String houseNumber) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: GestureDetector(
        onTap: () {
          _showModal(context, houseNumber);
        },
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
                houseNumber,
                style: GoogleFonts.kronaOne(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 15, 0, 76),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _showModal(BuildContext context, String houseNumber) {
    Text teksRumahNo1 = Text(
      houseNumber,
      style: GoogleFonts.kronaOne(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(255, 15, 0, 76),
      ),
      textAlign: TextAlign.center,
    );

    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: teksRumahNo1,
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TambahDetailWarga()),
            );
            },
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Center(
                child: Container(
                  width: 100,
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
             ),
             ),
            Center(
              child: SizedBox(
                width: 320,
                height: 200,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 130, 13),
                    borderRadius: BorderRadius.circular(17.0),
                    border: Border.all(
                      color: Color.fromARGB(255, 255, 130, 13),
                      width: 2.0,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      children: [
                        Text(
                          "NIK        : 320414372990002\n"
                          "Email      : Jisung1234@gmail.com\n"
                          "Nama       : Jisung\n"
                          "Password   : jisung1234\n",
                          style: GoogleFonts.josefinSans(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 15, 0, 76),
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
