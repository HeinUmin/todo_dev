import 'package:flutter/material.dart';
// import 'package:path_provider/path_provider.dart';
import '../res/data.dart';
import '../res/group_edit.dart';

class TaskEdit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TaskEditContainer();
  }
}

class TaskEditContainer extends StatefulWidget {
  const TaskEditContainer({Key? key}) : super(key: key);

  @override
  _TaskEditContainerState createState() => _TaskEditContainerState();
}

class _TaskEditContainerState extends State<TaskEditContainer> {
  List<GroupViewModel> tasks = [];
  List<GroupViewModel> copyList(List<GroupViewModel> list) {
    List<GroupViewModel> newList = [];
    list.forEach((element) {
      newList.add(GroupViewModel(
          name: element.name,
          task: element.task.map((e) {
            e.selected = false;
            return e;
          }).toList(),
          // .map((e) => TaskViewModel(
          //     name: e.name,
          //     time: e.time,
          //     key: e.key,
          //     description: e.description,
          //     weight: e.weight,
          //     repeat: e.repeat,
          //     complete: e.complete,
          //     show: e.show))
          // .toList(),
          color: element.color,
          key: element.key,
          fold: element.fold));
    });
    return newList;
  }

  @override
  void initState() {
    tasks = copyList(taskData);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.blue,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
          tooltip: '返回',
        ),
        title: Text('编辑任务',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
            )),
        foregroundColor: Colors.blue,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {
              for (int i = 0; i < tasks.length; i++) {
                var temp = tasks[i].task;
                for (int j = 0; j < temp.length; j++)
                  if (temp[j].selected!) {
                    temp.removeAt(j);
                    j--;
                  }
              }
              setState(() {});
            },
            icon: Icon(Icons.delete),
            color: Colors.red,
            tooltip: '删除',
          ),
          // IconButton(
          //   onPressed: () => print('分组'),
          //   icon: Icon(Icons.folder),
          //   color: Colors.green,
          //   tooltip: '编辑分组',
          // )
          PopupMenuButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.blue,
            ),
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              PopupMenuItem(
                child: Text('编辑分组'),
                value: 'group',
              ),
              PopupMenuItem(
                child: Text('选择已完成'),
                value: 'complete',
              ),
              PopupMenuItem(
                child: Text('全选'),
                value: 'all',
              ),
              PopupMenuItem(
                child: Text('反选'),
                value: 'reverse',
              ),
            ],
            tooltip: '菜单',
            onSelected: (String value) {
              if (value == 'group') {
                showDialog(
                    context: context,
                    builder: (context) {
                      return GroupEdit();
                    }).then((value) {
                  setState(() {});
                });
              }
              if (value == 'all') {
                for (int i = 0; i < tasks.length; i++) {
                  var temp = tasks[i].task;
                  for (int j = 0; j < temp.length; j++) temp[j].selected = true;
                }
                setState(() {});
              }
              if (value == 'complete') {
                for (int i = 0; i < tasks.length; i++) {
                  var temp = tasks[i].task;
                  for (int j = 0; j < temp.length; j++)
                    temp[j].selected = temp[j].complete;
                }
                setState(() {});
              }
              if (value == 'reverse') {
                for (int i = 0; i < tasks.length; i++) {
                  var temp = tasks[i].task;
                  for (int j = 0; j < temp.length; j++)
                    temp[j].selected = !temp[j].selected!;
                }
                setState(() {});
              }
            },
          ),
        ],
      ),
      body: Container(
        color: Color(0xFFEFEFEF),
        child: ListView.builder(
          // shrinkWrap: true,
          itemCount: tasks.length,
          itemBuilder: (context, index) {
            return MainCardContainer(
              data: tasks[index],
              last: index == tasks.length - 1,
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          for (int i = 0; i < tasks.length; i++) {
            var temp = tasks[i].task;
            for (int j = 0; j < temp.length; j++) temp[j].key = i;
          }
          taskData = copyList(tasks);
          Navigator.of(context).pop();
        },
        child: Icon(Icons.check),
        tooltip: '确定',
      ),
    );
  }
}

class MainCardContainer extends StatefulWidget {
  final GroupViewModel data;
  final bool last;
  MainCardContainer({Key? key, required this.data, required this.last})
      : super(key: key);
  @override
  _MainCardContainer createState() => _MainCardContainer();
}

class _MainCardContainer extends State<MainCardContainer> {
  TextStyle taskStyle(bool complete, DateTime taskTime) {
    if (complete)
      return TextStyle(
          color: Colors.grey, decoration: TextDecoration.lineThrough);
    else if (DateTime.now().isAfter(taskTime))
      return TextStyle(color: Colors.red, fontWeight: FontWeight.w600);
    else
      return TextStyle();
  }

  // Text priorityText(int priority) {
  //   if (priority == 1)
  //     return Text('');
  //   else if (priority == 2)
  //     return Text('!',
  //         style: TextStyle(
  //           color: Colors.amber,
  //           fontWeight: FontWeight.w700,
  //           fontSize: 20,
  //         ));
  //   else if (priority == 3)
  //     return Text('!!',
  //         style: TextStyle(
  //           color: Colors.amber[900],
  //           fontWeight: FontWeight.w700,
  //           fontSize: 20,
  //         ));
  //   else
  //     return Text('!!!',
  //         style: TextStyle(
  //           color: Colors.red,
  //           fontWeight: FontWeight.w700,
  //           fontSize: 20,
  //         ));
  // }

  Widget content() {
    final task = widget.data.task;
    return ReorderableListView.builder(
        key: Key(widget.data.key.toString()),
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final item = task[index];
          return ListTile(
            key: Key(index.toString()),
            leading: Checkbox(
                value: task[index].selected,
                onChanged: (value) {
                  setState(() {
                    task[index].selected = value!;
                  });
                }),
            trailing: Icon(Icons.dehaze),
            title: Text(
              '${item.name}',
              overflow: TextOverflow.ellipsis,
              style: taskStyle(item.complete, item.time),
            ),
            // trailing: priorityText(item.weight),
            dense: true,
          );
          // Visibility(
          //     visible: (item.show || showComplete) ? true : false,
          //     key: Key(item.key.toString()),
          //     child: Dismissible(
          //         confirmDismiss: (direction) async {
          //           if (direction == DismissDirection.startToEnd) {
          //             taskData.removeAt(index);
          //             ScaffoldMessenger.of(context).hideCurrentSnackBar();
          //             ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          //               content: Text("${item.name} 已删除"),
          //               action: SnackBarAction(
          //                   label: '撤销',
          //                   onPressed: () {
          //                     setState(() {
          //                       taskData.insert(index, item);
          //                     });
          //                     ScaffoldMessenger.of(context)
          //                         .showSnackBar(SnackBar(
          //                       content: Text('已撤销'),
          //                       duration: Duration(seconds: 1),
          //                     ));
          //                   }),
          //             ));
          //             return true;
          //           }
          //           if (direction == DismissDirection.endToStart) {
          //             item.complete = !item.complete;
          //             item.show = !item.complete;
          //             ScaffoldMessenger.of(context).hideCurrentSnackBar();
          //             if (showComplete) {
          //               ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          //                 content: Text(
          //                     "${item.name} ${item.complete ? '已完成' : '未完成'}"),
          //                 duration: Duration(seconds: 1),
          //               ));
          //               setState(() {});
          //               return false;
          //             }
          //             ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          //               content: Text("${item.name} 已完成"),
          //               action: SnackBarAction(
          //                   label: '撤销',
          //                   onPressed: () {
          //                     setState(() {
          //                       item.complete = false;
          //                       item.show = true;
          //                     });
          //                     ScaffoldMessenger.of(context)
          //                         .showSnackBar(SnackBar(
          //                       content: Text('已撤销'),
          //                       duration: Duration(seconds: 1),
          //                     ));
          //                   }),
          //             ));
          //             return true;
          //           }
          //         },
          //         key: Key(item.key.toString()),
          //         onDismissed: (direction) {
          //           setState(() {});
          //         },
          //         background: Container(
          //           color: Colors.red,
          //           child: ListTile(
          //             leading: Text(
          //               '删除',
          //               style: TextStyle(color: Colors.white),
          //             ),
          //             dense: true,
          //           ),
          //         ),
          //         secondaryBackground: Container(
          //           color: Colors.green,
          //           child: ListTile(
          //             trailing: Text(
          //               '完成',
          //               style: TextStyle(color: Colors.white),
          //             ),
          //             dense: true,
          //           ),
          //         ),
          //         child: ));
        },
        onReorder: (oldIndex, newIndex) {
          var temp = task[oldIndex];
          if (oldIndex > newIndex) {
            task.removeAt(oldIndex);
            task.insert(newIndex, temp);
            return;
          }
          if (oldIndex < newIndex) {
            task.removeAt(oldIndex);
            task.insert(newIndex - 1, temp);
            return;
          }
          // setState(() {});
        },
        itemCount: task.length);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: widget.last
            ? EdgeInsets.fromLTRB(16, 16, 16, 80)
            : EdgeInsets.fromLTRB(16, 16, 16, 0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.5, 1.0),
                  blurRadius: 1,
                  spreadRadius: 0.5)
            ]),
        child: Padding(
            padding: EdgeInsets.all(8),
            child: Theme(
                data: ThemeData(dividerColor: Colors.white),
                child: ExpansionTile(
                  tilePadding: EdgeInsets.symmetric(horizontal: 24),
                  maintainState: true,
                  leading: CircleAvatar(
                    radius: 15,
                    backgroundColor: widget.data.color,
                  ),
                  title: Text(widget.data.name,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF666666),
                      )),
                  children: [this.content()],
                  initiallyExpanded: !widget.data.fold,
                ))));
  }
}
