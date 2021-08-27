import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'data.dart';

class NewGruop extends StatefulWidget {
  const NewGruop({Key? key}) : super(key: key);

  @override
  _NewGruopState createState() => _NewGruopState();
}

class _NewGruopState extends State<NewGruop> {
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

// class GroupEdit extends StatefulWidget {
//   const GroupEdit({Key? key}) : super(key: key);

//   @override
//   _GroupEditState createState() => _GroupEditState();
// }

// class _GroupEditState extends State<GroupEdit> {
//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       scrollable: true,
//       title: Text('编辑分组'),
//       content: ReorderableListView.builder(
//         physics: NeverScrollableScrollPhysics(),
//         shrinkWrap: true,
//           itemBuilder: (context, index) {
//             var group = taskData[index];
//             return ListTile(
//               key: Key(group.key.toString()),
//               leading: Checkbox(onChanged: ,),
//             );
//           },
//           itemCount: itemCount,
//           onReorder: onReorder),
//     );
//   }
// }
