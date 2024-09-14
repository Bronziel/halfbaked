import 'package:flutter/material.dart';
import 'package:halfbaked/pages/viewRecipe/view_recipe.dart';
import 'package:halfbaked/try/ipad_pick_image.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ViewRecipe(),
                  ));
            },
            child: const Text('View Recipe'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const IpadPickImage(),
                  ));
            },
            child: const Text('try'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Create Recipe'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Component Builder'),
          ),
        ],
      ),
    );
  }
}
