import 'package:flutter/material.dart';
import 'package:pay2/homepage.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey =
      'pk_test_51L1bhoIE8O8WnGWKdbrNDV3sTI3gpvY415bQSghxHEbZHtIztZq7lfR7bV5pHUcAhQ6keGfJLde6Q3ejddMxxnSj00cyreGB9A';
  await Stripe.instance.applySettings();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
