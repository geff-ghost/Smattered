import 'package:flutter/material.dart';

class ListviewScreen extends StatelessWidget {
  const ListviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return getListView();
  }

  Widget getListView() {
    var listView = ListView(
      children: [
        ListTile(
          leading: Icon(Icons.landscape),
          title: Text('Landscape'),
          subtitle: Text('Beautiful View !!!'),
          trailing: Icon(Icons.wb_sunny),
          onTap: () => debugPrint('Landscape tapped'),
        ),

        ListTile(
          leading: Icon(Icons.radio_outlined),
          title: Text('Radio beacon'),
        ),
        ListTile(
          leading: Icon(Icons.add_a_photo_outlined),
          title: Text('Add a photo'),
        ),
      ],
    );

    return listView;
  }
}
