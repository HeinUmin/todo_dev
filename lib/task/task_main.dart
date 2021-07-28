import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

List<String> items = List<String>.generate(20, (i) => "Item ${i + 1}");

class TaskMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('测试',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
            )),
        foregroundColor: Colors.blue,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () => print('搜索'),
            icon: Icon(Icons.search),
            color: Colors.blue,
            tooltip: '搜索',
          ),
          PopupMenuButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.blue,
            ),
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              PopupMenuItem(child: Text('1')),
              PopupMenuItem(child: Text('2'))
            ],
            tooltip: '菜单',
          ),
        ],
      ),
      body: Card(
          child: ListView(
        children: [
          Text('List1'),
          ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return Dismissible(
                  key: Key(item),
                  onDismissed: (direction) {
                    print(direction);
                    items.removeAt(index);
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("$item dismissed")));
                  },
                  background: Container(color: Colors.red),
                  child: ListTile(title: new Text('$item')),
                );
              }),
        ],
      )),
    );
  }
}
