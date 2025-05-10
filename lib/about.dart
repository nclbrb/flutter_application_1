import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAF5FF),
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
                    fontSize: 24,
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
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _buildCard(
                      title: "About Me",
                      description:
                          "Hi, I'm Nicole Borabo, a 21-year-old 3rd-year BSIT student at the University of Cabuyao. I am passionate about technology and mobile development, with a strong foundation in programming languages like PHP, Java, and JavaScript. I love creating new things with Flutter and exploring exciting frameworks like Laravel. Aside from my studies and tech adventures, I enjoy a variety of hobbies like listening to music, especially K-pop, enjoying a nice cup of joe, and spending time with anime, movies, and books. Life is all about balance, and I try to stay focused on my studies while also indulging in things that make me happy. I believe there's always something new to learn, and I’m eager to continue my journey in tech!"
                    ),
                  ],
                ),
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

  Widget _buildCard({required String title, required String description}) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 10,
      shadowColor: Colors.purple.withOpacity(0.3),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color(0xFF6A3E8A),
                fontFamily: 'Comic Sans MS',
              ),
            ),
            SizedBox(height: 12),
            Text(
              description,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontFamily: 'Comic Sans MS',
                fontWeight: FontWeight.w400,
                height: 1.5,
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
