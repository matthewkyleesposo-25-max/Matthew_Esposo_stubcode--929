import 'package:flutter/material.dart';
import 'package:widgets/components/globalaoobar_component.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _NewsFeedScreenState();
}

class _NewsFeedScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalappbarComponent(),

      body: Center(child: Text("Profile Screen")),
    );
  }
}
