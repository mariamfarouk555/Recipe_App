import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Splach/Splachscreen.dart';
import 'home/viewModel/home_viewModel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeViewModel()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Splachscreen(),
      ),
    );
  }
}
