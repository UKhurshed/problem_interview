import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class RepositoryHomeUrlScreen extends StatefulWidget {
  final String url;

  const RepositoryHomeUrlScreen({super.key, required this.url});

  @override
  State<RepositoryHomeUrlScreen> createState() =>
      _RepositoryHomeUrlScreenState();
}

class _RepositoryHomeUrlScreenState extends State<RepositoryHomeUrlScreen> {
  @override
  void initState() {
    Future.delayed(Duration.zero).then((value) async {
      if (Platform.isAndroid) {
        await AndroidInAppWebViewController.setWebContentsDebuggingEnabled(
            true);

        var swAvailable = await AndroidWebViewFeature.isFeatureSupported(
            AndroidWebViewFeature.SERVICE_WORKER_BASIC_USAGE);
        var swInterceptAvailable =
            await AndroidWebViewFeature.isFeatureSupported(
                AndroidWebViewFeature.SERVICE_WORKER_SHOULD_INTERCEPT_REQUEST);

        if (swAvailable && swInterceptAvailable) {
          AndroidServiceWorkerController serviceWorkerController =
              AndroidServiceWorkerController.instance();

          await serviceWorkerController
              .setServiceWorkerClient(AndroidServiceWorkerClient(
            shouldInterceptRequest: (request) async {
              log('$request');
              return null;
            },
          ));
        }
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: InAppWebView(
          initialUrlRequest: URLRequest(url: Uri.parse(widget.url)),
        ),
      ),
    );
  }
}
