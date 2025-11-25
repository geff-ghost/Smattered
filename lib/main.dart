import 'package:flutter/material.dart';
import 'package:smattered/app_screens/listview_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('My Flutter App')),
        body: getListView(),
      ),
    );
  }
}

List<String> getListElements() {
  var items = List<String>.generate(100, (counter) => 'Item $counter');
  return items;
}

Widget getListView() {
  var listItems = getListElements();

  var listView = ListView.builder(
    itemBuilder: (context, index) {
      return ListTile(
        leading: Icon(Icons.arrow_right),
        title: Text(listItems[index]),
        subtitle: Text('We are an upcoming company'),
        trailing: Icon(Icons.app_registration_sharp),
        onTap: () {
          debugPrint('${listItems[index]} was tapped');
        },
      );
    },
  );
  return listView;
}
