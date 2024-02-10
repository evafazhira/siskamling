import 'package:flutter/material.dart';
import 'package:siskamling/user/kebakaran.dart';
import 'package:siskamling/user/pencurian.dart';

class Lapor extends StatelessWidget {
  const Lapor({super.key});

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
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 16.0),
                            child: Text(
                              "Pencurian",
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 2.0),
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
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 16.0),
                            child: Text(
                              "Kebakaran",
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 16.0),
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