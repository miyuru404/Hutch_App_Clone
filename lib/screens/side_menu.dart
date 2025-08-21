import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  final VoidCallback onClose; // callback to close menu

  const SideMenu({super.key, required this.onClose});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8, // 80% width
      color: const Color(0xFFFF6601),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50),
            ListTile(
              leading: const Icon(Icons.home, color: Colors.white),
              title: const Text("Home", style: TextStyle(color: Colors.white)),
              onTap: onClose,
            ),
            ListTile(
              leading: const Icon(Icons.handshake, color: Colors.white),
              title: const Text("Loyalty", style: TextStyle(color: Colors.white)),
              onTap: onClose,
            ),
            ListTile(
              leading: const Icon(Icons.verified_user, color: Colors.white),
              title: const Text("junior Internet Guard", style: TextStyle(color: Colors.white)),
              onTap: onClose,
            ),
            ListTile(
              leading: const Icon(Icons.family_restroom, color: Colors.white),
              title: const Text("Invite a Friend", style: TextStyle(color: Colors.white)),
              onTap: onClose,
            ),
            ListTile(
              leading: const Icon(Icons.account_box, color: Colors.white),
              title: const Text("My profile", style: TextStyle(color: Colors.white)),
              onTap: onClose,
            ),
            ListTile(
              leading: const Icon(Icons.manage_accounts_rounded, color: Colors.white),
              title: const Text("Manage Connections", style: TextStyle(color: Colors.white)),
              onTap: onClose,
            ),ListTile(
              leading: const Icon(Icons.file_copy, color: Colors.white),
              title: const Text("Bil Information", style: TextStyle(color: Colors.white)),
              onTap: onClose,
            ),ListTile(
              leading: const Icon(Icons.book, color: Colors.white),
              title: const Text("Packages", style: TextStyle(color: Colors.white)),
              onTap: onClose,
            ),ListTile(
              leading: const Icon(Icons.data_usage, color: Colors.white),
              title: const Text("My Plan", style: TextStyle(color: Colors.white)),
              onTap: onClose,
            ),
            ListTile(
              leading: const Icon(Icons.credit_card, color: Colors.white),
              title: const Text("Loan & send Credit", style: TextStyle(color: Colors.white)),
              onTap: onClose,
            ),
            ListTile(
              leading: const Icon(Icons.star, color: Colors.white),
              title: const Text("VAS", style: TextStyle(color: Colors.white)),
              onTap: onClose,
            ),ListTile(
              leading: const Icon(Icons.public, color: Colors.white),
              title: const Text("International", style: TextStyle(color: Colors.white)),
              onTap: onClose,
            ),ListTile(
              leading: const Icon(Icons.music_note, color: Colors.white),
              title: const Text("Touch Tunes", style: TextStyle(color: Colors.white)),
              onTap: onClose,
            ),ListTile(
              leading: const Icon(Icons.location_on, color: Colors.white),
              title: const Text("Locate Us", style: TextStyle(color: Colors.white)),
              onTap: onClose,
            ),ListTile(
              leading: const Icon(Icons.question_mark, color: Colors.white),
              title: const Text("Support", style: TextStyle(color: Colors.white)),
              onTap: onClose,
            ),ListTile(
              leading: const Icon(Icons.chat_bubble, color: Colors.white),
              title: const Text("Service Messages", style: TextStyle(color: Colors.white)),
              onTap: onClose,
            ),ListTile(
              leading: const Icon(Icons.stacked_bar_chart, color: Colors.white),
              title: const Text("My Usage", style: TextStyle(color: Colors.white)),
              onTap: onClose,
            ),ListTile(
              leading: const Icon(Icons.history, color: Colors.white),
              title: const Text("Usage History", style: TextStyle(color: Colors.white)),
              onTap: onClose,
            ),
            ListTile(
              leading: const Icon(Icons.settings, color: Colors.white),
              title: const Text("Settings", style: TextStyle(color: Colors.white)),
              onTap: onClose,
            ),
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.white),
              title: const Text("Logout", style: TextStyle(color: Colors.white)),
              onTap: onClose,
            ),











            // ... add as many ListTiles as you want
          ],
        ),
      ),
    );
  }
}
