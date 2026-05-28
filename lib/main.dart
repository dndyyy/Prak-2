import 'package:flutter/material.dart';
import 'page1.dart';
import 'page2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavPage(),
    );
  }
}

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({super.key});

  @override
 State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {

  int selectedIndex = 0;

  // LIST PAGE
  final List<Widget> pages = [
    const TravelPage(),
    const Page2(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // PAGE
      body: pages[selectedIndex],

      // NAVBAR
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,

        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },

        items: const [

          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.hotel),
            label: "Hotel",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}

// Halaman Profile
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [

              // BAGIAN ATAS
              SizedBox(
                height: 220,

                child: Stack(
                  alignment: Alignment.center,

                  children: [

                    // TITLE
                    const Positioned(
                      top: 40,

                      child: Text(
                        "Profile",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),

                    // FOTO PROFILE BULAT
                    Positioned(
                      bottom: 0,

                      child: Container(
                        width: 100,
                        height: 100,

                        decoration: BoxDecoration(
                          shape: BoxShape.circle,

                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          ),
                        ),

                        child: ClipOval(
                          child: Image.network(
                            'https://0.soompi.io/wp-content/uploads/2025/11/17232014/karina-chanel-beauty-2.jpg',

                            width: 100,
                            height: 100,

                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              // DATA PROFILE
              profileItem(
                Icons.person_outline,
                "Dandy Putra",
              ),

              profileItem(
                Icons.phone_outlined,
                "1462300083",
              ),

              profileItem(
                Icons.email_outlined,
                "DandyPutra@gmail.com",
              ),

              profileItem(
                Icons.location_on_outlined,
                "Surabaya",
              ),

              profileItem(
                Icons.camera_alt_outlined,
                "@pab2023",
              ),

              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  Widget profileItem(IconData icon, String text) {
    return Container(
      width: double.infinity,

      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 18,
      ),

      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey.shade300,
          ),
        ),
      ),

      child: Row(
        children: [

          Icon(
            icon,
            color: Colors.black,
            size: 28,
          ),

          const SizedBox(width: 20),

          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}