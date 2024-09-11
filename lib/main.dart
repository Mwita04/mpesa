import 'package:flutter/material.dart';
import 'package:mpesa/pages/safaricom_home.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mpesa Clone Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        // primarySwatch: Colors.blue,
      ),
      home: const SafaricomHome(),
    );
  }
}
