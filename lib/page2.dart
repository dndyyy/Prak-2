import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            children: [

              // ISI ATAS
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [

                      const SizedBox(height: 30),

                      // TITLE
                      const Text(
                        "Suite Room",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 20),

                      // IMAGE
                      Image.network(
                        'https://coolhunting.com/wp-content/uploads/2016/12/The-Kiroro-Resort-03.jpg',
                        width: 250,
                        height: 300,
                        fit: BoxFit.cover,
                      ),

                      const SizedBox(height: 20),

                      // PRICE
                      const Text(
                        "\$100",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 10),

                      // DESCRIPTION
                      const Text(
                        "Suite | King Bed Model Room",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // BUTTON BAWAH
              SizedBox(
                width: double.infinity,
                height: 50,

                child: ElevatedButton(
                  onPressed: () {

                    // POPUP
                    showDialog(
                      context: context,

                      // HILANGKAN BACKGROUND HITAM
                      barrierColor: Colors.transparent,

                      builder: (context) {
                        return Dialog(
                          backgroundColor: Colors.white,

                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),

                          child: Container(
                            width: 260,
                            padding: const EdgeInsets.all(20),

                            decoration: BoxDecoration(
                              color: Colors.white,

                              // GARIS HITAM
                              border: Border.all(
                                color: Colors.black,
                                width: 1,
                              ),
                            ),

                            child: Column(
                              mainAxisSize: MainAxisSize.min,

                              children: [

                                // TITLE
                                const Text(
                                  "Confirm Booking",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                const SizedBox(height: 35),

                                // TEXT
                                const Text(
                                  "Are you sure you want to book this Suite Room for \$100 per night?",
                                  textAlign: TextAlign.center,

                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),

                                const SizedBox(height: 35),

                                // BUTTON YES
                                Align(
                                  alignment: Alignment.bottomRight,

                                  child: TextButton(
                                    onPressed: () {

                                      Navigator.pop(context);

                                      ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(
                                          content: Text(
                                            "Booking Success!",
                                          ),
                                        ),
                                      );
                                    },

                                    child: const Text(
                                      "Yes",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },

                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade300,

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),

                  child: const Text(
                    "Book Now",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
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