import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zawadi/core/presentation/screens/webpage_screen.dart';
import 'package:zawadi/core/presentation/widgets/app_bar_widget.dart';
import '../widgets/center_icon.dart';

class LegalScreen extends StatelessWidget {
  const LegalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Uri pirvacyPolicyURI = Uri.parse( dotenv.env['PRIVACY_POLICY_URL']! );
    Uri termAndConditionsURI = Uri.parse(dotenv.env['TERMS_AND_CONDITIONS_URL']! );
    Uri licencesURI = Uri.parse( dotenv.env['LICENCES_URL']! );

    return Scaffold(
        appBar: const QrooAppBar(hasBackButton: true,),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Legal',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ),

            SingleChildScrollView(
              child: Column(
                children: [
                  //
                  ListTile(
                    leading: const CenterIcon(Icons.key),
                    title: const Text('Privacy policy'),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return WebpageScreen(pageTitle: "Privacy policy", webpageUrl: pirvacyPolicyURI);
                          },
                        ),
                      );
                    },
                  ),
                  ListTile(
                    leading: const CenterIcon(Icons.message),
                    title: const Text('Terms & conditions'),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return WebpageScreen(pageTitle: "Terms & conditions", webpageUrl: termAndConditionsURI);
                            },
                          ),
                        );
                      },
                  ),
                  ListTile(
                    leading: const CenterIcon(Icons.notifications),
                    title: const Text('Licences'),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return WebpageScreen(pageTitle: "Licences", webpageUrl: licencesURI);
                          },
                        ),
                      );
                    },
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
