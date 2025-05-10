import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String backgroundImage = 'assets/images/background.jpg'; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE6E6FA),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 24),
            height: 70,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFD8B2D1), Color(0xFFE1C6D8)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.purple.shade800.withOpacity(0.3),
                  blurRadius: 6,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Nicole Borabo',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3,
                    fontFamily: 'Comic Sans MS',
                    shadows: [
                      Shadow(
                        color: Colors.black.withOpacity(0.6),
                        offset: Offset(2, 2),
                        blurRadius: 3,
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    navLink(context, 'Home', '/'),
                    navLink(context, 'About Me', '/about'),
                    navLink(context, 'Gallery', '/gallery'),
                    navLink(context, 'Mission/Vision', '/mission'),
                    navLink(context, 'Contact Me', '/contact'),
                  ],
                ),
              ],
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            'Welcome to My Website!',
                            style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF6A3E8A),
                              fontFamily: 'Comic Sans MS',
                              shadows: [
                                Shadow(
                                  color: Colors.white.withOpacity(0.6),
                                  offset: Offset(4, 4),
                                  blurRadius: 10,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                        Center(
                          child: ElevatedButton(
                            onPressed: () => Navigator.pushNamed(context, '/about'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFB5A6D2),
                              foregroundColor: Colors.white,
                              elevation: 12,
                              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              shadowColor: Colors.purple.shade300,
                            ),
                            child: Text(
                              'Learn About Me!',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 30),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.purple.shade200, width: 4),
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.purple.shade400.withOpacity(0.3),
                            blurRadius: 10,
                            offset: Offset(5, 5),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          backgroundImage,
                          height: 350,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Container(
            color: Color(0xFFE1C6D8),
            padding: EdgeInsets.all(12),
            width: double.infinity,
            child: Center(
              child: Text(
                '© 2025 Nicole Borabo | All rights reserved.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Comic Sans MS',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget navLink(BuildContext context, String title, String route) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: TextButton(
        onPressed: () => Navigator.pushNamed(context, route),
        style: TextButton.styleFrom(
          foregroundColor: Colors.white,
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            fontFamily: 'Comic Sans MS',
            shadows: [
              Shadow(
                color: Colors.black45,
                offset: Offset(1, 1),
              )
            ],
          ),
        ),
      ),
    );
  }
}
