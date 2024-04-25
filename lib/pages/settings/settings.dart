import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../global/widgets/app_bar.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const QrooAppBar(
          title1: 'Zawadi',
          title2: ' Digital',
          hasBackButton: false
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              SettingsCard(
                leading: Icon(
                  Icons.facebook,
                  size: 24.w,
                ),
                title: 'Facebook',
                trailingText: 'Connected',
              ),
              SettingsCard(
                title: 'Dark Mode',
                trailingText: 'Enabled',
              ),
              SettingsCard(
                title: 'Toggle Beta Version',
                trailing: Icon(
                  Icons.keyboard_arrow_right_rounded,
                  size: 24.w,
                ),
              ),
              SettingsCard(
                title: 'Disable image loading',
                trailing: Checkbox(
                  value: false,
                  onChanged: (value) {},
                ),
              ),
              SettingsCard(
                title: 'Limit background data usage to wifi only',
                trailing: Checkbox(
                  value: false,
                  onChanged: (value) {},
                ),
              ),
              SettingsCard(
                title: 'Push Notification',
              ),
              SettingsCard(
                title: 'Account',
              ),
              SettingsCard(
                title: 'Email notification',
              ),
              SettingsCard(
                title: 'Join our community',
              ),
              SettingsCard(
                title: 'Sign out',
              ),
            ],
          ),
        ),
    );
  }
}


class SettingsCard extends StatelessWidget {
  const SettingsCard({
    super.key,
    this.leading,
    required this.title,
    this.trailingText,
    this.trailing,
  }) : assert((trailing == null) || (trailingText == null));

  final Widget? leading;
  final String title;
  final String? trailingText;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 18.h,
      ),
      margin: EdgeInsets.symmetric(
        horizontal: 24.w,
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: Color(0x99D0D0D0),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children: [
                leading ?? SizedBox.shrink(),
                8.horizontalSpace,
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Work Sans',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          if (trailingText != null)
            Text(
              trailingText!,
              style: TextStyle(
                color: Color(0xFF0F62FE),
                fontSize: 14,
                fontFamily: 'Work Sans',
                fontWeight: FontWeight.w400,
              ),
            ),
          if (trailing != null)
            SizedBox.square(
              dimension: 24.w,
              child: trailing!,
            )
        ],
      ),
    );
  }
}
