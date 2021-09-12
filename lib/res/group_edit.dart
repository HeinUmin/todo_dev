import 'package:flutter/material.dart';
import 'material_picker.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'data.dart';

class NewGroup extends StatefulWidget {
  const NewGroup({Key? key}) : super(key: key);

  @override
  _NewGroupState createState() => _NewGroupState();
}

class _NewGroupState extends State<NewGroup> {
  TextEditingController newGruop = TextEditingController();
  Color currentColor = Color(0xff443a49);

  Widget colorPicker(Color pickerColor) {
    return AlertDialog(
      scrollable: true,
      backgroundColor: Color(0xFFEFEFEF),
      title: const Text('选择颜色'),
      content:
          // SingleChildScrollView(
          // child: ColorPicker(
          //   pickerColor: pickerColor,
          //   onColorChanged: (Color color) {
          //     setState(() => pickerColor = color);
          //   },
          //   showLabel: true,
          //   pickerAreaHeightPercent: 0.8,
          // ),
          // Use Material color picker:
          //
          // child:
          MaterialPicker(
        pickerColor: pickerColor,
        onColorChanged: (Color color) {
          setState(() => pickerColor = color);
        },
        enableLabel: true, // only on portrait mode
      ),
      //
      // Use Block color picker:
      //
      // child: BlockPicker(
      //   pickerColor: pickerColor,
      //   onColorChanged: (Color color) {
      //     setState(() => pickerColor = color);
      //   },
      // ),
      //
      // child: MultipleChoiceBlockPicker(
      //   pickerColors: currentColors,
      //   onColorsChanged: changeColors,
      // ),
      // ),
      actions: <Widget>[
        TextButton(
          child: Text('取消'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          child: Text('确定'),
          onPressed: () {
            Navigator.of(context).pop(pickerColor);
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: true,
      title: Text('添加新分组'),
      content: TextField(
        autofocus: true,
        controller: newGruop,
        decoration: InputDecoration(
            labelText: '新分组名称',
            border: OutlineInputBorder(),
            suffixIcon: IconButton(
              icon: Icon(
                Icons.circle,
                color: currentColor,
              ),
              onPressed: () {
                // FocusScope.of(context)
                //         .requestFocus(FocusNode());
                showDialog(
                        context: context,
                        builder: (context) => this.colorPicker(currentColor))
                    .then((value) {
                  setState(() {
                    FocusScope.of(context).requestFocus(FocusNode());
                    if (value != null) currentColor = value;
                  });
                });
              },
            ),
            helperText: '轻触右侧图标选择颜色'),
        onEditingComplete: () =>
            FocusScope.of(context).requestFocus(FocusNode()),
      ),
      actions: [
        TextButton(
            onPressed: () => Navigator.of(context).pop(), child: Text('取消')),
        TextButton(
            onPressed: () {
              if (newGruop.text.isEmpty) {
                Fluttertoast.showToast(msg: '请输入分组名');
                return;
              }
              taskData.add(GroupViewModel(
                  name: newGruop.text,
                  task: [],
                  color: currentColor,
                  key: taskData.length));
              Navigator.of(context).pop();
            },
            child: Text('确定')),
      ],
    );
  }
}

class GroupRename extends StatefulWidget {
  final GroupViewModel group;
  const GroupRename({required this.group, Key? key}) : super(key: key);

  @override
  _NewGruopState createState() => _NewGruopState();
}

class _NewGruopState extends State<GroupRename> {
  TextEditingController gruopEdit = TextEditingController();
  Color currentColor = Color(0xff443a49);

  Widget colorPicker(Color pickerColor) {
    return AlertDialog(
      scrollable: true,
      backgroundColor: Color(0xFFEFEFEF),
      title: Text('选择颜色'),
      content:
          // SingleChildScrollView(
          // child: ColorPicker(
          //   pickerColor: pickerColor,
          //   onColorChanged: (Color color) {
          //     setState(() => pickerColor = color);
          //   },
          //   showLabel: true,
          //   pickerAreaHeightPercent: 0.8,
          // ),
          // Use Material color picker:
          //
          // child:
          MaterialPicker(
        pickerColor: pickerColor,
        onColorChanged: (Color color) {
          setState(() => pickerColor = color);
        },
        enableLabel: true, // only on portrait mode
      ),
      //
      // Use Block color picker:
      //
      // child: BlockPicker(
      //   pickerColor: pickerColor,
      //   onColorChanged: (Color color) {
      //     setState(() => pickerColor = color);
      //   },
      // ),
      //
      // child: MultipleChoiceBlockPicker(
      //   pickerColors: currentColors,
      //   onColorsChanged: changeColors,
      // ),
      // ),
      actions: <Widget>[
        TextButton(
          child: Text('取消'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          child: Text('确定'),
          onPressed: () {
            Navigator.of(context).pop(pickerColor);
          },
        ),
      ],
    );
  }

  @override
  void initState() {
    gruopEdit.text = widget.group.name;
    currentColor = widget.group.color;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: true,
      title: Text('编辑分组'),
      content: TextField(
        autofocus: true,
        controller: gruopEdit,
        decoration: InputDecoration(
            labelText: '分组名称',
            border: OutlineInputBorder(),
            suffixIcon: IconButton(
              icon: Icon(
                Icons.circle,
                color: currentColor,
              ),
              onPressed: () {
                // FocusScope.of(context)
                //         .requestFocus(FocusNode());
                showDialog(
                        context: context,
                        builder: (context) => this.colorPicker(currentColor))
                    .then((value) {
                  setState(() {
                    FocusScope.of(context).requestFocus(FocusNode());
                    if (value != null) currentColor = value;
                  });
                });
              },
            ),
            helperText: '轻触右侧图标选择颜色'),
        onEditingComplete: () =>
            FocusScope.of(context).requestFocus(FocusNode()),
      ),
      actions: [
        TextButton(
            onPressed: () => Navigator.of(context).pop(), child: Text('取消')),
        TextButton(
            onPressed: () {
              if (gruopEdit.text.isEmpty) {
                Fluttertoast.showToast(msg: '请输入分组名');
                return;
              }
              widget.group.name = gruopEdit.text;
              widget.group.color = currentColor;
              Navigator.of(context).pop();
            },
            child: Text('确定')),
      ],
    );
  }
}

class GroupEdit extends StatefulWidget {
  const GroupEdit({Key? key}) : super(key: key);

  @override
  _GroupEditState createState() => _GroupEditState();
}

class _GroupEditState extends State<GroupEdit> {
  List<GroupViewModel> groups = [];
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
    groups = copyList(taskData);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      // scrollable: true,
      title: Text('编辑分组(排在首位将作为默认分组)'),
      content: Container(
        width: MediaQuery.of(context).size.width,
        height: 48.0 * groups.length > MediaQuery.of(context).size.height * 0.9
            ? MediaQuery.of(context).size.height * 0.9
            : 48.0 * groups.length,
        child: ReorderableListView.builder(
            // buildDefaultDragHandles: false,
            // physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              var group = groups[index];
              return Dismissible(
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
                    color: Colors.red,
                    child: ListTile(
                      trailing: Text(
                        '删除',
                        style: TextStyle(color: Colors.white),
                      ),
                      dense: true,
                    ),
                  ),
                  onDismissed: (direction) {
                    setState(() {
                      groups.removeAt(index);
                    });
                  },
                  key: Key(group.key.toString()),
                  child: ListTile(
                      leading: Icon(Icons.circle, color: group.color),
                      trailing: Icon(Icons.dehaze),
                      title: Text(group.name, overflow: TextOverflow.ellipsis),
                      dense: true,
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return GroupRename(
                                group: group,
                              );
                            }).then(
                          (value) {
                            setState(() {});
                          },
                        );
                      }));
            },
            itemCount: groups.length,
            onReorder: (oldIndex, newIndex) {
              setState(() {
                var temp = groups[oldIndex];
                if (oldIndex > newIndex) {
                  groups.removeAt(oldIndex);
                  groups.insert(newIndex, temp);
                  return;
                }
                if (oldIndex < newIndex) {
                  groups.removeAt(oldIndex);
                  groups.insert(newIndex - 1, temp);
                  return;
                }
              });
            }),
      ),
      actions: [
        TextButton(
            onPressed: () => Navigator.of(context).pop(), child: Text('取消')),
        TextButton(
            onPressed: () {
              for (int i = 0; i < groups.length; i++) groups[i].key = i;
              Navigator.of(context).pop();
              taskData = copyList(groups);
              Navigator.of(context).pop();
            },
            child: Text('确定')),
      ],
    );
  }
}
