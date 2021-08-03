import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import '../res/data.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// var items = List<String>.generate(20, (i) => "Item ${i + 1}");

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
              PopupMenuItem(child: Text('编辑')),
              PopupMenuItem(child: Text('显示')),
              PopupMenuItem(child: Text('添加新分组'))
            ],
            tooltip: '菜单',
          ),
        ],
      ),
      body: Container(
        color: Color(0xFFEFEFEF),
        child: ListView.builder(
          itemCount: taskData.length,
          itemBuilder: (context, index) {
            return MainCardContainer(data: taskData[index]);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        tooltip: '添加待办',
      ),
    );
  }
}

class MainCardContainer extends StatefulWidget {
  final GroupViewModel data;
  MainCardContainer({Key? key, required this.data}) : super(key: key);
  @override
  _MainCardContainer createState() => _MainCardContainer();
}

class _MainCardContainer extends State<MainCardContainer> {
  Widget title() {
    return
        // Padding(
        //     padding: EdgeInsets.all(8),
        //     child:
        ListTile(
      leading: CircleAvatar(
        radius: 15,
        backgroundColor: widget.data.color,
      ),
      title: Text(
        widget.data.name,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w700,
          color: Color(0xFF666666),
        ),
      ),
      trailing:
          IconButton(onPressed: () {}, icon: Icon(Icons.keyboard_arrow_down)),
      // )
      // Row(
      //   children: [
      //     CircleAvatar(
      //       radius: 15,
      //       backgroundColor: widget.data.color,
      //     ),
      //     Padding(padding: EdgeInsets.only(left: 10)),
      //     Text(
      //       widget.data.name,
      //       style: TextStyle(
      //         fontSize: 15,
      //         fontWeight: FontWeight.w500,
      //         color: Color(0xFF666666),
      //       ),
      //     ),
      //     IconButton(onPressed: () {}, icon: Icon(Icons.keyboard_arrow_down))
      //   ],
      // )
    );
  }

  Widget dataCard() {
    final taskData = widget.data.task;
    return ListView.separated(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final item = taskData[index];
          return Dismissible(
              confirmDismiss: (direction) async {
                if (direction == DismissDirection.startToEnd) {
                  setState(() {
                    taskData.removeAt(index);
                  });
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("${item.name} 已删除"),
                    action: SnackBarAction(
                        label: '撤销',
                        onPressed: () {
                          setState(() {
                            taskData.insert(index, item);
                          });
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('已撤销'),
                            duration: Duration(seconds: 1),
                          ));
                        }),
                  ));
                  return true;
                }
                if (direction == DismissDirection.endToStart) {
                  setState(() {
                    item.complete = !item.complete;
                  });
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content:
                        Text("${item.name} ${item.complete ? '已完成' : '未完成'}"),
                    duration: Duration(seconds: 1),
                  ));
                  return false;
                }
              },
              key: Key(item.name),
              // onDismissed: (direction) {
              //   if (direction == DismissDirection.startToEnd) {}
              //   if (direction == DismissDirection.endToStart) {}
              // },
              background: Container(
                color: Colors.red,
                child: ListTile(
                  leading: Text(
                    '删除',
                    style: TextStyle(color: Colors.white),
                  ),
                  dense: true,
                ),
              ),
              secondaryBackground: Container(
                color: Colors.green,
                child: ListTile(
                  trailing: Text(
                    '完成',
                    style: TextStyle(color: Colors.white),
                  ),
                  dense: true,
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: ListTile(
                      leading: Checkbox(
                        value: item.complete,
                        onChanged: (value) {
                          setState(() {
                            item.complete = value!;
                          });
                        },
                      ),
                      title: Text(
                        '${item.name}',
                        overflow: TextOverflow.ellipsis,
                      ),
                      dense: true,
                    ),
                  )
                ],
              ));
        },
        separatorBuilder: (context, index) {
          return Container(
            height: .5,
            margin: EdgeInsets.symmetric(horizontal: 15),
            color: Color(0xFFDDDDDD),
          );
        },
        itemCount: taskData.length);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              this.title(),
              this.dataCard(),
            ],
          ),
        ));
  }
}

// class MainCard extends StatefulWidget {
//   MainCard({Key? key}) : super(key: key);
//   @override
//   _MainCard createState() => _MainCard();
// }

// class _MainCard extends State<MainCard> {
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: ListView.builder(
//           itemCount: items.length,
//           itemBuilder: (context, index) {
//             final item = items[index];
//             return Dismissible(
//               confirmDismiss: (direction) async {
//                 if (direction == DismissDirection.startToEnd) {
//                   setState(() {
//                     items.removeAt(index);
//                   });
//                   ScaffoldMessenger.of(context).hideCurrentSnackBar();
//                   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                     content: Text("$item 已删除"),
//                     action: SnackBarAction(
//                         label: '撤销',
//                         onPressed: () {
//                           setState(() {
//                             items.insert(index, item);
//                           });
//                           ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                             content: Text('已撤销'),
//                             duration: Duration(seconds: 1),
//                           ));
//                         }),
//                   ));
//                   return true;
//                 }
//                 if (direction == DismissDirection.endToStart) {
//                   ScaffoldMessenger.of(context).hideCurrentSnackBar();
//                   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                     content: Text("$item 已完成"),
//                     duration: Duration(seconds: 1),
//                   ));
//                   return false;
//                 }
//               },
//               key: Key(item),
//               // onDismissed: (direction) {
//               //   if (direction == DismissDirection.startToEnd) {}
//               //   if (direction == DismissDirection.endToStart) {}
//               // },
//               background: Container(
//                 color: Colors.red,
//                 child: ListTile(
//                   leading: Text(
//                     '删除',
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 ),
//               ),
//               secondaryBackground: Container(
//                 color: Colors.green,
//                 child: ListTile(
//                   trailing: Text(
//                     '完成',
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 ),
//               ),
//               child: ListTile(title: new Text('$item')),
//             );
//           }),
//     );
//   }
// }
