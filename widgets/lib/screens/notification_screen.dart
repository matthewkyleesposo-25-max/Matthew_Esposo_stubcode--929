import 'package:flutter/material.dart';
import 'package:widgets/components/globalaoobar_component.dart';
import 'package:widgets/components/notification_component.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  final List<Map<String, dynamic>> notifications = [
    {
      "username": "John Doe",
      "message": "liked your post.",
      "time": "5 minutes ago",
      "type": "like",
      "read": false,
    },
    {
      "username": "Jane Smith",
      "message": "commented on your post.",
      "time": "10 minutes ago",
      "type": "comment",
      "read": false,
    },
    {
      "username": "Michael Cruz",
      "message": "sent you a friend request.",
      "time": "20 minutes ago",
      "type": "friend_request",
      "read": true,
    },
    {
      "username": "Sarah Williams",
      "message": "shared your post.",
      "time": "1 hour ago",
      "type": "share",
      "read": true,
    },
    {
      "username": "Alex Santos",
      "message": "mentioned you in a comment.",
      "time": "2 hours ago",
      "type": "mention",
      "read": true,
    },
    {
      "username": "Robert Antiporda",
      "message": "started following you.",
      "time": " 1 min ago",
      "type": "follow",
      "read": false,
    },
    {
      "username": "Matthew Esposo",
      "message": "Liked your photo.",
      "time": "8 hours ago",
      "type": "like",
      "read": false,
    },
    {
      "username": "Jheff Borms",
      "message": "Posted a new reel.",
      "time": "7 hours ago",
      "type": "post",
      "read": true,
    },
    {
      "username": "Justine Cauba",
      "message": "Reacted your photo.",
      "time": "4 hours ago",
      "type": "like",
      "read": true,
    },
    {
      "username": "Clarence Fernandez",
      "message": "Update there profile.",
      "time": "7 mins ago",
      "type": "notification",
      "read": true,
    },
  ];

  IconData _iconForType(String? type) {
    switch (type) {
      case "like":
        return Icons.thumb_up_sharp;

      case "comment":
        return Icons.comment;

      case "friend_request":
        return Icons.person_add;

      case "share":
        return Icons.share;

      case "mention":
        return Icons.alternate_email;

      case "follow":
        return Icons.person;

      default:
        return Icons.notifications;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalappbarComponent(),

      body: ListView.builder(
        itemCount: notifications.length,

        itemBuilder: (context, index) {
          final notification = notifications[index];

          return NotificationComponent(
            username: notification["username"],
            message: notification["message"],
            time: notification["time"],
            icon: _iconForType(notification["type"]),
            selected: !(notification["read"] as bool? ?? false),
          );
        },
      ),
    );
  }
}
