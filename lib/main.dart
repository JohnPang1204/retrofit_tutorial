import 'package:flutter/material.dart';

import 'airasia/provider/aa_grocery_repository.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  Future<void> _incrementCounter() async {
    // var productCount = await AirAsiaGroceryRepository()
    //     .getProductsCount(categoryId: '79cf0f76-1f40-4797-853b-bc91649e5fc4');

    // print('[John] ${productCount}');
    //
    // var response =  await AirAsiaGroceryRepository()
    //     .getMenuProducts(categoryId: '79cf0f76-1f40-4797-853b-bc91649e5fc4');
    //
    // var list = response.getData;
    // //
    // print('[John] ${response.getData.toString()}');

    // var response =  await AirAsiaGroceryRepository()
    //     .getProductFilters(categoryId: '79cf0f76-1f40-4797-853b-bc91649e5fc4');

   var testing =   await AirAsiaGroceryRepository().getCarouselIds();

   var asd = testing;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
