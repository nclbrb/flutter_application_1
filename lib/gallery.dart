import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  final List<String> imageUrls = [
    'https://scontent.fmnl37-2.fna.fbcdn.net/v/t39.30808-6/429681830_7569758999752206_3267471120401683563_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=vhWxhwE3bHAQ7kNvwH5LHyu&_nc_oc=AdnDv9k4BDTmM_Z9hj8DBu9XmuLQ5UEoV2_ABp8wc0PZF4Ck2KToH9FIcu8txFJvNUQ&_nc_zt=23&_nc_ht=scontent.fmnl37-2.fna&_nc_gid=WxSQWnXEUZjc9rtuRGQjfg&oh=00_AfLNHxSV6-CFUTp2_87QJBdJgkANlS3Y2-jq0a4hCQ1NsQ&oe=6824560A',
    'https://scontent.fmnl37-2.fna.fbcdn.net/v/t39.30808-6/429681830_7569758999752206_3267471120401683563_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=vhWxhwE3bHAQ7kNvwH5LHyu&_nc_oc=AdnDv9k4BDTmM_Z9hj8DBu9XmuLQ5UEoV2_ABp8wc0PZF4Ck2KToH9FIcu8txFJvNUQ&_nc_zt=23&_nc_ht=scontent.fmnl37-2.fna&_nc_gid=WxSQWnXEUZjc9rtuRGQjfg&oh=00_AfLNHxSV6-CFUTp2_87QJBdJgkANlS3Y2-jq0a4hCQ1NsQ&oe=6824560A',
    'https://scontent.fmnl37-2.fna.fbcdn.net/v/t39.30808-6/429681830_7569758999752206_3267471120401683563_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=vhWxhwE3bHAQ7kNvwH5LHyu&_nc_oc=AdnDv9k4BDTmM_Z9hj8DBu9XmuLQ5UEoV2_ABp8wc0PZF4Ck2KToH9FIcu8txFJvNUQ&_nc_zt=23&_nc_ht=scontent.fmnl37-2.fna&_nc_gid=WxSQWnXEUZjc9rtuRGQjfg&oh=00_AfLNHxSV6-CFUTp2_87QJBdJgkANlS3Y2-jq0a4hCQ1NsQ&oe=6824560A',
    'https://scontent.fmnl37-2.fna.fbcdn.net/v/t39.30808-6/429681830_7569758999752206_3267471120401683563_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=vhWxhwE3bHAQ7kNvwH5LHyu&_nc_oc=AdnDv9k4BDTmM_Z9hj8DBu9XmuLQ5UEoV2_ABp8wc0PZF4Ck2KToH9FIcu8txFJvNUQ&_nc_zt=23&_nc_ht=scontent.fmnl37-2.fna&_nc_gid=WxSQWnXEUZjc9rtuRGQjfg&oh=00_AfLNHxSV6-CFUTp2_87QJBdJgkANlS3Y2-jq0a4hCQ1NsQ&oe=6824560A',
    'https://scontent.fmnl37-2.fna.fbcdn.net/v/t39.30808-6/429681830_7569758999752206_3267471120401683563_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=vhWxhwE3bHAQ7kNvwH5LHyu&_nc_oc=AdnDv9k4BDTmM_Z9hj8DBu9XmuLQ5UEoV2_ABp8wc0PZF4Ck2KToH9FIcu8txFJvNUQ&_nc_zt=23&_nc_ht=scontent.fmnl37-2.fna&_nc_gid=WxSQWnXEUZjc9rtuRGQjfg&oh=00_AfLNHxSV6-CFUTp2_87QJBdJgkANlS3Y2-jq0a4hCQ1NsQ&oe=6824560A',
    'https://scontent.fmnl37-2.fna.fbcdn.net/v/t39.30808-6/429681830_7569758999752206_3267471120401683563_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=vhWxhwE3bHAQ7kNvwH5LHyu&_nc_oc=AdnDv9k4BDTmM_Z9hj8DBu9XmuLQ5UEoV2_ABp8wc0PZF4Ck2KToH9FIcu8txFJvNUQ&_nc_zt=23&_nc_ht=scontent.fmnl37-2.fna&_nc_gid=WxSQWnXEUZjc9rtuRGQjfg&oh=00_AfLNHxSV6-CFUTp2_87QJBdJgkANlS3Y2-jq0a4hCQ1NsQ&oe=6824560A',
  ];

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
              padding: const EdgeInsets.all(16.0),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 1,
                ),
                itemCount: imageUrls.length,
                itemBuilder: (context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Container(
                      width: 120,
                      height: 120,
                      child: Image.network(
                        imageUrls[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
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
