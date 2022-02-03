import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/images/saif-ul-malook.png'),
          // Header section ************
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 20),
            child: ListTile(
              title: Text('Jheel Saiful Malook'),
              subtitle: Text('Swat Pakistan'),
              trailing: SizedBox(
                width: 60,
                child: Row(
                  children: [
                    Icon(Icons.star, color: Colors.red),
                    Text('41', style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ),
            ),
          ),
          // Nav section ************
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NavIconButtton(
                title: 'Call',
                icon: Icons.phone,
              ),
              NavIconButtton(
                title: 'Route',
                icon: Icons.directions,
              ),
              NavIconButtton(
                title: 'Share',
                icon: Icons.share,
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(38.0),
            child: Text(
                'This guide then takes a step back to explain Flutter’s approach to layout, and shows how to place a single widget on the screen. After a discussion of how to lay widgets out horizontally and vertically, some of the most common layout widgets are covered.'),
          )
        ],
      ),
    );
  }
}

class NavIconButtton extends StatelessWidget {
  const NavIconButtton({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.blue),
        SizedBox(height: 5),
        Text(title, style: TextStyle(color: Colors.blue)),
      ],
    );
  }
}
