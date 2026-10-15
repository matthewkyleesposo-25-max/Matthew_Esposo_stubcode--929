import 'package:flutter/material.dart';
import 'package:widgets/components/globalaoobar_component.dart';
import 'package:widgets/components/newsfeedcomponent.dart';

class NewsfeedScreen extends StatefulWidget {
  const NewsfeedScreen({super.key});

  @override
  State<NewsfeedScreen> createState() => _NewsfeedScreenState();
}

class _NewsfeedScreenState extends State<NewsfeedScreen> {
  final List<Map<String, String>> newsfeed = [
    {
      "username": "John Doe",
      "status": "Having a great day!",
      "likes": "120",
      "comments": "25",
      "shares": "10",
      "Time": "2 Hours Ago",
    },
    {
      "username": "Jaden Smith",
      "status": "Karate Kid",
      "likes": "2.5M",
      "comments": "1M",
      "shares": "560K",
      "time": "1 Hour Ago",
    },
    {
      "username": "Jheff Borms",
      "status": "Taekwondo time.",
      "likes": "89K",
      "comments": "12K",
      "shares": "9K",
      "Time": "35 mins ago",
    },
    {
      "username": "Matthew Esposo",
      "status": "Let's go hiking.",
      "likes": "255",
      "comments": "189",
      "shares": "305",
      "time": "1min",
    },
    {
      "username": "Justine Dela Pena",
      "status": "Single but ready to mingle.",
      "likes": "25K",
      "comments": "5k",
      "shares": "1.5K",
      "time": "Just Now",
    },
    {
      "username": "Robert Antiporda",
      "status": "LETTTZZZGOOOO.",
      "likes": "899K",
      "comments": "122K",
      "shares": "25K",
      "time": "5 Hours ago",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalappbarComponent(),

      body: ListView.builder(
        padding: const EdgeInsets.all(10),

        itemCount: newsfeed.length,

        itemBuilder: (context, index) {
          final post = newsfeed[index];

          return Newsfeedcomponent(
            username: post["username"],
            status: post["status"],
            numberoflikes: post["likes"],
            numberofcomments: post["comments"],
            numberofshares: post["shares"],
            timeposted: post["time"],
          );
        },
      ),
    );
  }
}
