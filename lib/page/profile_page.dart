import 'package:flutter/material.dart';
 
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          Center(
            child: Container(
              width: 110,
              height: 110,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF8B7BD8),
              ),
              child: ClipOval(
                child: Image.asset(
                  'lib/image/profile.png',
                  fit: BoxFit.cover,
                  width: 110,
                  height: 110,
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'JUNA LEI G. SIONILLO',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 24),
          Card(
            child: Column(
              children: const [
                ListTile(
                  leading: Icon(Icons.badge),
                  title: Text('Student ID'),
                  subtitle: Text('558815'),
                ),
                ListTile(
                  leading: Icon(Icons.school),
                  title: Text('Course and Section'),
                  subtitle: Text('BSIT — 3450'),
                ),
                ListTile(
                  leading: Icon(Icons.email),
                  title: Text('Email'),
                  subtitle: Text('j.ssionillo.558815@umindanao.edu.ph'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}