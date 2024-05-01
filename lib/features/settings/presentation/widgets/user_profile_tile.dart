import 'package:flutter/material.dart';
import 'package:zawadi/features/settings/presentation/widgets/user_dp.dart';

class UserProfileTile extends StatelessWidget {
  const UserProfileTile({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {

      },
      child: Padding(
        padding: const EdgeInsets.all(17),
        child: Row(
          children: [
            Hero(
              tag: 'user-profile-dp',
              child: UserDP(
                radius: 30,
              ),
            ),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Peter Karanja",
                ),
                const SizedBox(height: 5),
                Text(
                  "pittskay@gmail.com",
                ),
              ],
            ),
            const Spacer(),
            Icon(
              Icons.qr_code,
              color: Theme.of(context).hintColor,
            ),
          ],
        ),
      ),
    );
  }
}