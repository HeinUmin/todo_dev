import 'dart:async';
import 'package:flutter/material.dart';
import 'package:todo_dev/task/task_detail.dart';
// import 'package:path_provider/path_provider.dart';
import 'task_new.dart';
import 'task_edit.dart';
import 'task_search.dart';
import '../res/data.dart';
import '../res/group_edit.dart';
import '../login/login_start.dart';

class TaskMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TaskMainContainer();
  }
}

class TaskMainContainer extends StatefulWidget {
  const TaskMainContainer({Key? key}) : super(key: key);

  @override
  _TaskMainContainerState createState() => _TaskMainContainerState();
}

class _TaskMainContainerState extends State<TaskMainContainer> {
  callback() {
    setState(() {});
  }

  String mainTitle() {
    if (DateTime.now().hour < 5)
      return '夜深了!';
    else if (DateTime.now().hour < 9)
      return '早上好!';
    else if (DateTime.now().hour < 12)
      return '上午好!';
    else if (DateTime.now().hour < 13)
      return '中午好!';
    else if (DateTime.now().hour < 18)
      return '下午好!';
    else
      return '晚上好!';
  }

  @override
  Widget build(BuildContext context) {
    for (int i = 0; i < taskData.length; i++) {
      var temp = taskData[i].task;
      for (int j = 0; j < temp.length; j++) temp[j].selected = temp[j].complete;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Hi, ' + mainTitle(),
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
            )),
        foregroundColor: Colors.blue,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => TaskSearch()))
                  .then((value) {
                setState(() {});
              });
            },
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
              PopupMenuItem(
                child: Text('编辑'),
                value: 'edit',
              ),
              PopupMenuItem(
                child: Text('${showComplete ? "隐藏已完成" : "显示已完成"}'),
                value: 'show',
              ),
              PopupMenuItem(
                child: Text('添加新分组'),
                value: 'add',
              ),
              PopupMenuItem(
                child: Text('登录界面'),
                value: 'login',
              )
            ],
            tooltip: '菜单',
            onSelected: (String value) {
              if (value == 'login')
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => LoginStart()))
                    .then((value) {
                  setState(() {});
                });
              if (value == 'edit')
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => TaskEdit()))
                    .then((value) {
                  setState(() {});
                  // setState(() {
                  //   show = taskData
                  //       .map((e) =>
                  //           e.task.map((element) => !element.complete).toList())
                  //       .toList();
                  // });
                });
              if (value == 'show')
                setState(() {
                  showComplete = !showComplete;
                });
              if (value == 'add')
                showDialog(
                    context: context,
                    builder: (context) {
                      return NewGroup();
                    }).then((value) {
                  setState(() {});
                  // setState(() {
                  //   show = taskData
                  //       .map((e) =>
                  //           e.task.map((element) => !element.complete).toList())
                  //       .toList();
                  // });
                });
            },
          ),
        ],
      ),
      body: Container(
        color: Color(0xFFEFEFEF),
        child: ListView.builder(
          // shrinkWrap: true,
          itemCount: taskData.length,
          itemBuilder: (context, index) {
            return MainCardContainer(callback,
                data: taskData[index], group: index);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => TaskNew()));
          setState(() {});
          // setState(() {
          //   show = taskData
          //       .map((e) => e.task.map((element) => !element.complete).toList())
          //       .toList();
          // });
        },
        child: Icon(Icons.add),
        tooltip: '添加待办',
      ),
    );
  }
}

class MainCardContainer extends StatefulWidget {
  final GroupViewModel data;
  final int group;
  final Function callback;
  MainCardContainer(this.callback,
      {Key? key, required this.data, required this.group})
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

  Text priorityText(int priority) {
    if (priority == 1)
      return Text('');
    else if (priority == 2)
      return Text('!',
          style: TextStyle(
            color: Colors.amber,
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ));
    else if (priority == 3)
      return Text('!!',
          style: TextStyle(
            color: Colors.amber[900],
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ));
    else
      return Text('!!!',
          style: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ));
  }

  Widget content() {
    final task = widget.data.task;
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final item = task[index];
          return Visibility(
              visible: (!item.selected! || showComplete) ? true : false,
              child: Dismissible(
                  confirmDismiss: (direction) async {
                    if (direction == DismissDirection.startToEnd) {
                      task.removeAt(index);
                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("${item.name} 已删除"),
                        action: SnackBarAction(
                            label: '撤销',
                            onPressed: () {
                              setState(() {
                                task.insert(index, item);
                              });
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                content: Text('已撤销'),
                                duration: Duration(seconds: 1),
                              ));
                            }),
                      ));
                      return true;
                    }
                    if (direction == DismissDirection.endToStart) {
                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                      if (showComplete) {
                        item.complete = !item.complete;
                        item.selected = item.complete;
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(
                              "${item.name} ${item.complete ? '已完成' : '未完成'}"),
                          duration: Duration(seconds: 1),
                        ));
                        setState(() {});
                        return false;
                      }
                      item.complete = true;
                      item.selected = true;
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("${item.name} 已完成"),
                        action: SnackBarAction(
                            label: '撤销',
                            onPressed: () {
                              setState(() {
                                item.complete = false;
                                item.selected = false;
                              });
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                content: Text('已撤销'),
                                duration: Duration(seconds: 1),
                              ));
                            }),
                      ));
                      return true;
                    }
                  },
                  key: Key(item.key.toString()),
                  onDismissed: (direction) {
                    setState(() {});
                  },
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
                  child: ListTile(
                    onTap: () async {
                      await Navigator.of(context)
                          .push(MaterialPageRoute(
                              builder: (context) => TaskDetail(
                                  group: widget.group, index: index)))
                          .then((value) => null);
                      widget.callback();
                    },
                    leading: Checkbox(
                        value: item.complete,
                        onChanged: (value) {
                          setState(() {
                            item.complete = value!;
                          });
                          if (showComplete || !item.complete) {
                            item.selected = item.complete;
                            return;
                          }
                          ScaffoldMessenger.of(context).hideCurrentSnackBar();
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("${item.name} 已完成"),
                            action: SnackBarAction(
                                label: '撤销',
                                onPressed: () {
                                  setState(() {
                                    item.complete = false;
                                    item.selected = false;
                                  });
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    content: Text('已撤销'),
                                    duration: Duration(seconds: 1),
                                  ));
                                }),
                          ));
                          Timer(
                              Duration(seconds: 3),
                              () => setState(() {
                                    item.selected = item.complete;
                                  }));
                        }),
                    title: Text(
                      '${item.name}',
                      overflow: TextOverflow.ellipsis,
                      style: taskStyle(item.complete, item.time),
                    ),
                    trailing: priorityText(item.weight),
                    dense: true,
                  )));
        },
        separatorBuilder: (context, index) {
          return Container(
            height: .5,
            margin: EdgeInsets.symmetric(horizontal: 15),
            color: Color(0xFFDDDDDD),
          );
        },
        itemCount: task.length);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: widget.group == taskData.length - 1
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
