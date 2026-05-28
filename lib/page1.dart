import 'package:flutter/material.dart';
import 'page2.dart';

class TravelPage extends StatelessWidget {
  const TravelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [

              // TITLE
              const SizedBox(height: 20),

              const Text(
                "TravelGo",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              // BANNER
              Image.network(
                'https://www.ciu-jts.co.id/uploads/5/4/0/2/54026437/hokkaido_orig.png',
                width: double.infinity,
                height: 180,
                fit: BoxFit.cover,
              ),

              const SizedBox(height: 25),

              // GRID CARD
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),

                child: GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),

                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: 0.8,

                  children: [

                    villaCard(
                      context,
                      "Villa 1",
                      "\$100",
                    ),

                    villaCard(
                      context,
                      "Mini 2",
                      "\$90",
                    ),

                    villaCard(
                      context,
                      "Villa 3",
                      "\$120",
                    ),

                    villaCard(
                      context,
                      "Villa 4",
                      "\$150",
                    ),

                    villaCard(
                      context,
                      "Villa 4",
                      "\$150",
                    ),

                    villaCard(
                      context,
                      "Villa 4",
                      "\$150",
                    ),

                    villaCard(
                      context,
                      "Villa 4",
                      "\$150",
                    ),

                    villaCard(
                      context,
                      "Villa 4",
                      "\$150",
                    ),

                    villaCard(
                      context,
                      "Villa 4",
                      "\$150",
                    ),

                    villaCard(
                      context,
                      "Villa 4",
                      "\$150",
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // BUTTON BOOK NOW
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),

                child: SizedBox(
                  width: double.infinity,
                  height: 50,

                  child: ElevatedButton(
                    onPressed: () {

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Page2(),
                        ),
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
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  // CARD
  Widget villaCard(
    BuildContext context,
    String title,
    String price,
  ) {
    return GestureDetector(

      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Page2(),
          ),
        );
      },

      child: Container(
        padding: const EdgeInsets.all(8),

        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey.shade400),
        ),

        child: Column(
          children: [

            Expanded(
              child: Image.network(
                'https://coolhunting.com/wp-content/uploads/2016/12/The-Kiroro-Resort-03.jpg',
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 8),

            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),

            Text(
              price,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}