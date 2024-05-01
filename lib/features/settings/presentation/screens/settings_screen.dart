import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zawadi/pages/settings/user_profile.dart';
import '../../../../core/presentation/widgets/app_bar_widget.dart';
import '../widgets/center_icon.dart';
import '../widgets/user_profile_tile.dart';
import 'legal_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

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
                    'Settings',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
              ),

              SingleChildScrollView(
                child: Column(
                  children: [
                    const UserProfileTile(),
                    const Divider(height: 0),

                    // Settings tiles
                    ListTile(
                      leading:SvgPicture.asset(
                        'assets/svgs/profile.svg',
                        width: 30,
                        height: 30,
                        colorFilter: ColorFilter.mode(Theme
                            .of(context)
                            .hintColor, BlendMode.srcIn),
                      ),
                      title: const Text('Manage account'),
                      subtitle: Text(
                        'Security, update profile, change password',
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return const UserProfileScreen();
                            },
                          ),
                        );
                      },
                    ),
                    // ListTile(
                    //   leading: const CenterIcon(Icons.message),
                    //   title: const Text('Chats'),
                    //   subtitle: Text(
                    //     'Theme, wallpapers, chat history',
                    //     style: Theme.of(context).textTheme.labelSmall,
                    //   ),
                    //   onTap: () {
                    //   },
                    // ),
                    ListTile(
                      leading: const CenterIcon(Icons.notifications),
                      title: const Text('Notifications'),
                      subtitle: Text(
                        'Alerts, group & call tones',
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    ),
                    // ListTile(
                    //   leading: const CenterIcon(Icons.data_usage),
                    //   title: const Text('Storage and data'),
                    //   subtitle: Text(
                    //     'Network usage, auto-download',
                    //     style: Theme.of(context).textTheme.labelSmall,
                    //   ),
                    // ),
                    ListTile(
                      leading: const CenterIcon(Icons.language),
                      title: const Text('App language'),
                      subtitle: Text(
                        "English (phone's language)",
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    ),
                    ListTile(
                      leading: const CenterIcon(Icons.help_outline),
                      title: const Text('Legal'),
                      subtitle: Text(
                        'Help center, contact us, privacy policy',
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return const LegalScreen();
                            },
                          ),
                        );
                      }
                    ),
                    const ListTile(
                      leading: CenterIcon(Icons.group),
                      title: Text('Invite a friend'),
                    ),

                    // "from meta"
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 40),
                      child: Column(
                        children: [
                          Text(
                            'a product by',
                            style: TextStyle(color: Theme.of(context).hintColor),
                          ),
                          const SizedBox(height: 5),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const SizedBox(width: 5),
                              Text(
                                'Qroo Solutions',
                                style: TextStyle(
                                  color: Theme.of(context).hintColor,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )


      );
    }
  }
