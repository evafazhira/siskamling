import 'package:flutter/material.dart';

class Kebakaran extends StatelessWidget {
  const Kebakaran({super.key});

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
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "Data Rumah",
                    style: TextStyle(
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
                  child: Container(
                    width: 320,
                    height: 75,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 251, 129, 16),
                      borderRadius: BorderRadius.circular(17.0),
                      border: Border.all(
                        color: const Color.fromARGB(255, 251, 129, 16),
                        width: 2.0,
                      ),
                    ),
                    alignment: Alignment.center,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        "Rumah No.1",
                        style: TextStyle(
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
                      color: const Color.fromARGB(255, 251, 129, 16),
                      borderRadius: BorderRadius.circular(17.0),
                      border: Border.all(
                        color: const Color.fromARGB(255, 251, 129, 16),
                        width: 2.0,
                      ),
                    ),
                    alignment: Alignment.center,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        "Rumah No.2",
                        style: TextStyle(
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
                      color: const Color.fromARGB(255, 251, 129, 16),
                      borderRadius: BorderRadius.circular(17.0),
                      border: Border.all(
                        color: const Color.fromARGB(255, 251, 129, 16),
                        width: 2.0,
                      ),
                    ),
                    alignment: Alignment.center,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        "Rumah No.3",
                        style: TextStyle(
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
                      color: const Color.fromARGB(255, 251, 129, 16),
                      borderRadius: BorderRadius.circular(17.0),
                      border: Border.all(
                        color: const Color.fromARGB(255, 251, 129, 16),
                        width: 2.0,
                      ),
                    ),
                    alignment: Alignment.center,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        "Rumah No.4",
                        style: TextStyle(
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
                      color: const Color.fromARGB(255, 251, 129, 16),
                      borderRadius: BorderRadius.circular(17.0),
                      border: Border.all(
                        color: const Color.fromARGB(255, 251, 129, 16),
                        width: 2.0,
                      ),
                    ),
                    alignment: Alignment.center,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        "Rumah No.5",
                        style: TextStyle(
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