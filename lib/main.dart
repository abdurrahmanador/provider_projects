import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'number_increasing_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => NumberIncreasingProvider())
      ],
      child: MaterialApp(
        title: 'Provider First App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumberIncreasingProvider>(
        builder: (BuildContext context, numberIncreasingProvider, child) =>
            Scaffold(
              appBar: AppBar(
                backgroundColor: Theme.of(context).colorScheme.inversePrimary,
                title: Text("Provider Increasing App"),
              ),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'You have pushed the button this many times:',
                    ),
                    Text(
                      numberIncreasingProvider.number.toString(),
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ],
                ),
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: numberIncreasingProvider.addNumber,
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ), // This trailing comma makes auto-formatting nicer for build methods.
            ));
  }
}
