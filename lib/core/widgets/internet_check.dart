// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';
import 'package:mandoob/core/extensions/extensions.dart';
import 'package:url_launcher/url_launcher.dart';

class InternetCheckWidget extends StatefulWidget {
  final Widget child;

  const InternetCheckWidget({super.key, required this.child});

  @override
  _InternetCheckWidgetState createState() => _InternetCheckWidgetState();
}

class _InternetCheckWidgetState extends State<InternetCheckWidget> {
  late ConnectivityResult _connectivityResult;
  late Connectivity _connectivity;

  @override
  void initState() {
    super.initState();
    _connectivity = Connectivity();
    _checkInternet();
  }

  Future<void> _checkInternet() async {
    _connectivityResult =
        (await _connectivity.checkConnectivity()) as ConnectivityResult;
    if (_connectivityResult == ConnectivityResult.none) {
      _showNoInternetDialog();
    }
  }

  void _showNoInternetDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('No Internet Connection'),
          content: const Text(
              'Please check your internet connection and try again.'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                context.pop();
                SystemNavigator.pop();
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () async {
                Navigator.of(context).pop();
                _openNetworkSettings();
              },
              child: const Text('Go to Settings'),
            ),
          ],
        );
      },
    );
  }

  Future<void> _openNetworkSettings() async {
    const url = 'package:settings';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not open settings';
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
