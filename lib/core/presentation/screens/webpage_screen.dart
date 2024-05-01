import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:zawadi/core/presentation/widgets/app_bar_widget.dart';


class WebpageScreen extends StatefulWidget {
  final String pageTitle;
  final Uri webpageUrl;

  WebpageScreen({Key? key, required this.pageTitle, required this.webpageUrl}): super(key: key);

  @override
  WebpageScreenState createState() => WebpageScreenState();
}

class WebpageScreenState extends State<WebpageScreen> {
  late final WebViewController controller;


  @override
  void initState() {
    super.initState();
    controller = WebViewController();
    controller
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            return NavigationDecision.prevent;
          },
        ),
      )
      ..loadRequest(widget.webpageUrl);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const QrooAppBar(hasBackButton: true,),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                widget.pageTitle,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: WebViewWidget( controller: controller, ),
          ),
        ]
      ),
    );
  }
}

