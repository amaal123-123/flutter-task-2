import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE8E9E2),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              const Spacer(),

              // Logo
              SizedBox(
                width: 250,
                height: 280,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 220,
                      height: 220,
                      decoration: const BoxDecoration(
                        color: Color(0xFF176D5D),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.pets,
                        color: Colors.white,
                        size: 125,
                      ),
                    ),

                    const Positioned(
                      top: 0,
                      left: 20,
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 85,
                      ),
                    ),

                    const Positioned(
                      top: 0,
                      right: 45,
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 45,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 45),

              // App title
              const Text(
                'سكة العلاج البيطرية',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF176D5D),
                ),
              ),

              const SizedBox(height: 25),

              // Description
              const Text(
                'كل ما تحتاجه لرعاية حيوانك..\nفي مكان واحد',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 21,
                  height: 1.6,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF176D5D),
                ),
              ),

              const Spacer(),

              // Start button
              SizedBox(
                width: double.infinity,
                height: 58,
                child: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('أهلاً بيك في سكة العلاج البيطرية'),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF176D5D),
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: const StadiumBorder(),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'ابدأ',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 15),
                      Icon(Icons.keyboard_double_arrow_left, size: 30),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}