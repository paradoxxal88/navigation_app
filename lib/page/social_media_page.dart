import 'package:flutter/material.dart';
 
class SocialMediaPage extends StatelessWidget {
  const SocialMediaPage({super.key});
 
  void showAccount(BuildContext context, String account) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Selected account: $account'),
      ),
    );
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Social Media'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          const Text(
            'Connect With Me',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Tap an account to display its username.',
          ),
          const SizedBox(height: 20),
          Card(
            child: ListTile(
              leading: const Icon(
                Icons.facebook, size: 32,
                color: Colors.blueAccent,
              ),
              title: const Text('Facebook'),
              subtitle: const Text('Junalei Sionillo'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => showAccount(
                context,
                'Facebook: https://web.facebook.com/junalei.sionillo.75/',
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: SizedBox(
                width: 32,
                height: 32,
                child: Image.asset(
                  'lib/image/instagram.png',
                  fit: BoxFit.contain,
                ),
              ),
              title: const Text('Instagram'),
              subtitle: const Text('@junalei88'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => showAccount(
                context,
                'Instagram: https://www.instagram.com/junalei88/',
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: SizedBox(
                width: 32,
                height: 32,
                child: Image.asset(
                  'lib/image/youtube.png',
                  fit: BoxFit.contain,
                ),
              ),
              title: const Text('YouTube'),
              subtitle: const Text('@StudentChannel'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => showAccount(
                context,
                'YouTube: @StudentChannel',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
 