import 'package:flutter/material.dart';
import 'homepage.dart';
import 'about.dart';
import 'gallery.dart';
import 'mission.dart';
import 'contact.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.teal, 
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/about': (context) => AboutPage(),
        '/gallery': (context) => GalleryPage(),
        '/mission': (context) => MissionPage(),
        '/contact': (context) => ContactPage(),
      },
      debugShowCheckedModeBanner: false, 
    );
  }
}

Widget drawerNav(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero, 
      children: [
        DrawerHeader(
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor, 
          ),
          child: Text(
            'Navigation Menu',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
        ListTile(
          title: Text('Homepage'),
          onTap: () {
            Navigator.pop(context); 
            Navigator.pushNamed(context, '/');
          },
        ),
        ListTile(
          title: Text('About Me'),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/about');
          },
        ),
        ListTile(
          title: Text('Gallery'),
          onTap: () {
            Navigator.pop(context); 
            Navigator.pushNamed(context, '/gallery');
          },
        ),
        ListTile(
          title: Text('Mission/Vision'),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/mission');
          },
        ),
        ListTile(
          title: Text('Contact Me'),
          onTap: () {
            Navigator.pop(context); 
            Navigator.pushNamed(context, '/contact');
          },
        ),
      ],
    ),
  );
}
