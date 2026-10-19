import 'package:flutter/material.dart';
import 'package:widgets/components/globalaoobar_component.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  static const double coverHeight = 200;
  static const double avatarRadius = 55;
  static const double avatarOuter = avatarRadius + 4;

  final List<Map<String, dynamic>> personalInfo = [
    {"label": "Lives in Iloilo City", "type": "location"},
    {"label": "Pavia, Iloilo City", "type": "address"},
    {"label": "Born July 6, 2006", "type": "birthdate"},
  ];

  IconData _iconForType(String? type) {
    switch (type) {
      case "location":
        return Icons.location_on;
      case "address":
        return Icons.home;
      case "birthdate":
        return Icons.cake;
      default:
        return Icons.info;
    }
  }

  Widget _topIcon(IconData icon) {
    return CircleAvatar(
      radius: 18,
      backgroundColor: Colors.black45,
      child: Icon(icon, color: Colors.white, size: 20),
    );
  }

  Widget _header() {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: avatarOuter),
          child: Container(
            height: coverHeight,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF42A5F5), Color(0xFF7E57C2)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 12,
          right: 12,
          child: SafeArea(
            child: Row(
              children: [
                _topIcon(Icons.menu),
                const Spacer(),
                _topIcon(Icons.edit),
                const SizedBox(width: 8),
                _topIcon(Icons.search),
                const SizedBox(width: 8),
                _topIcon(Icons.more_horiz),
              ],
            ),
          ),
        ),
        Positioned(
          top: coverHeight - 45,
          right: 12,
          child: _topIcon(Icons.camera_alt),
        ),
        Positioned(
          top: coverHeight - avatarOuter,
          left: 16,
          child: const CircleAvatar(
            radius: avatarOuter,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: avatarRadius,
              backgroundColor: Colors.grey,
              child: Icon(Icons.person, size: 60, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }

  Widget _info() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Matthew Esposo",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const Text(
            "0 posts  •  Iloilo City",
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                  icon: const Icon(Icons.add),
                  label: const Text("Add to story"),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.edit),
                  label: const Text("Edit profile"),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          const Row(
            children: [
              Icon(Icons.lock, size: 16, color: Colors.grey),
              SizedBox(width: 6),
              Expanded(
                child: Text(
                  "Your profile is only visible to you.",
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                ),
              ),
              Text(
                "Learn more",
                style: TextStyle(color: Colors.blue, fontSize: 13),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _tabs() {
    return DefaultTabController(
      length: 3,
      child: TabBar(
        labelColor: Colors.blue,
        unselectedLabelColor: Colors.grey,
        tabs: const [
          Tab(text: "All"),
          Tab(text: "Photos"),
          Tab(text: "Reels"),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalappbarComponent(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            _header(),
            _info(),
            const SizedBox(height: 12),
            _tabs(),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Personal details",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.edit),
                ],
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: personalInfo.length,
              itemBuilder: (context, index) {
                final info = personalInfo[index];
                return ListTile(
                  leading: Icon(
                    _iconForType(info["type"]),
                    color: Colors.grey[700],
                  ),
                  title: Text(info["label"]),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
