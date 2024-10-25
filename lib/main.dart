import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:firebase_analytics/firebase_analytics.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize(); // 初始化 Google Mobile Ads
  InAppPurchase.instance.isAvailable(); // 检查应用内购买是否可用
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final FirebaseAnalytics analytics =
      FirebaseAnalytics.instance; // 初始化 Firebase Analytics

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Simple App'),
        ),
        body: const Center(
          child: Text('This is a simple app.'),
        ),
      ),
    );
  }
}
