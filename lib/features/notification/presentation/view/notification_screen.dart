import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:matgry/gen/assets.gen.dart';
import 'package:matgry/gen/fonts.gen.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            Assets.images.notification.noNotification,
            height: 300,
          ),
          const Text(
            'No Notifications',
            style: TextStyle(
                fontFamily: FontFamily.poppins,
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
        ],
      ),
    );
  }
}
