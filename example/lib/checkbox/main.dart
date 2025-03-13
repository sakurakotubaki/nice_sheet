import 'package:flutter/material.dart';
import 'package:nice_sheet/checkbox_sheet.dart';

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
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  List<String> items = [
                    'Item 1',
                    'Item 2',
                    'Item 3',
                    'Item 4',
                    'Item 5',
                    'Item 6',
                    'Item 7',
                    'Item 8',
                    'Item 9',
                    'Item 10',
                    'Item 11',
                    'Item 12',
                    'Item 13',
                    'Item 14',
                  ];

                  CheckboxSheet.showCheckboxSheet(context, items, (
                    List<bool> checked,
                  ) {
                    debugPrint('Checked: $checked');
                  });
                },
                child: Text('Show Checkbox Sheet'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
