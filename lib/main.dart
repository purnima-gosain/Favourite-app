import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_1/favourite/favourite_screen.dart';
import 'package:provider_1/provider/favourite.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => FavouriteItemProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const FavouriteScreen(),
      ),
    );
  }
}
