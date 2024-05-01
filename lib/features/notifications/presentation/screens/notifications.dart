import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zawadi/core/presentation/widgets/app_bar_widget.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const QrooAppBar(),
      body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Notifications', style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ),

            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric( horizontal: 19, ),
                itemCount: 6,
                itemBuilder: (context, index) =>
                    NotificationCard(isRead: [0, 1].contains(index) ? false : true),
              ),
            ),
          ]
      )
    );
  }
}

class NotificationCard extends StatelessWidget {
  const NotificationCard({super.key, required this.isRead});

  final bool isRead;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 14),
      decoration: ShapeDecoration(
        color: isRead ? null : Color(0x190043CE),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Row(
        children: [
          Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(
              color: isRead ? null : Color(0xFF0043CE),
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Container(
            width: 54,
            height: 54,
            decoration: ShapeDecoration(
              color: Color(0xFFC4C4C4),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
            ),
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Notifcation title',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontFamily: 'Work Sans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  'A sentence or two of what the notification is about (max 2 lines)',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontFamily: 'Work Sans',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Icon(
            Icons.delete_outline,
          ),
        ],
      ),
    );
  }
}
