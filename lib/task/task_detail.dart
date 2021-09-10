import 'package:flutter/material.dart';
import '../res/data.dart';

class TaskDetail extends StatefulWidget {
  final int group;
  final int index;
  const TaskDetail({required this.group, required this.index, Key? key})
      : super(key: key);

  @override
  _TaskDetailState createState() => _TaskDetailState();
}

class _TaskDetailState extends State<TaskDetail> {
  TextEditingController name = TextEditingController();
  TextEditingController description = TextEditingController();
  TextEditingController dateTemp = TextEditingController();
  TextEditingController time = TextEditingController();
  TextEditingController repetition = TextEditingController();
  TextEditingController alarm = TextEditingController();
  DateTime date = DateTime.now();
  FocusNode descriptionNode = FocusNode();
  List<DropdownMenuItem<int>> dropDownMenuItem = [];
  int priority = 1;
  int group = 0;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    taskData.forEach((element) {
      dropDownMenuItem.add(DropdownMenuItem(
        child: Text(element.name),
        value: element.key,
      ));
    });
    TaskViewModel data = taskData[widget.group].task[widget.index];
    name.text = data.name;
    if (data.description != null) description.text = data.description!;
    date = data.time;
    dateTemp.text = date.toString().substring(0, 10);
    priority = data.weight;
    group = widget.group;
    repetition.text = repeatString(data.repeat);
    alarm.text = alarmString(data.alarm);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    time.text = TimeOfDay.fromDateTime(date).format(context);
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
        title: Text('编辑事项',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
            )),
        foregroundColor: Colors.blue,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(child: this.input()),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            var toChange = taskData[group].task;
            for (int i = 0; i < toChange.length; i++) {
              toChange[i].key = i;
            }
            if (group == widget.group)
              toChange[widget.index] = TaskViewModel(
                  name: name.text,
                  time: date,
                  key: widget.index,
                  description: description.text,
                  weight: priority,
                  repeat: stringRepeat(repetition.text),
                  alarm: stringAlarm(alarm.text));
            else {
              toChange.add(TaskViewModel(
                  name: name.text,
                  time: date,
                  key: toChange.length,
                  description: description.text,
                  weight: priority,
                  repeat: stringRepeat(repetition.text),
                  alarm: stringAlarm(alarm.text)));
              taskData[widget.group].task.removeAt(widget.index);
            }
            Navigator.of(context).pop();
          }
        },
        child: Icon(Icons.done),
      ),
    );
  }

  Widget input() {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
                  child: TextFormField(
                    controller: name,
                    decoration: InputDecoration(
                        labelText: '事项主题',
                        border: OutlineInputBorder(),
                        labelStyle: TextStyle(fontWeight: FontWeight.w600)),
                    onEditingComplete: () =>
                        FocusScope.of(context).requestFocus(descriptionNode),
                    validator: (value) {
                      if (value == '') return '请输入名称';
                      return null;
                    },
                  )),
              Padding(
                  padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
                  child: TextFormField(
                    focusNode: descriptionNode,
                    controller: description,
                    maxLines: 3,
                    decoration: InputDecoration(
                      labelText: '添加描述',
                      border: OutlineInputBorder(),
                    ),
                  )),
              Padding(
                  padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
                  child: Row(
                    children: [
                      Expanded(
                          child: TextField(
                        enableInteractiveSelection: false,
                        controller: dateTemp,
                        onTap: () {
                          FocusScope.of(context).requestFocus(FocusNode());
                          showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime.now(),
                                  lastDate:
                                      DateTime.now().add(Duration(days: 3650)))
                              .then((value) {
                            if (value != null) {
                              date = value;
                              dateTemp.text = value.toString().substring(0, 10);
                            }
                          });
                        },
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.event),
                          labelText: '选择日期',
                          border: OutlineInputBorder(),
                        ),
                      )),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Expanded(
                          child: TextField(
                        enableInteractiveSelection: false,
                        controller: time,
                        onTap: () {
                          FocusScope.of(context).requestFocus(FocusNode());
                          showTimePicker(
                                  context: context,
                                  initialTime: TimeOfDay.now())
                              .then((value) {
                            if (value != null) {
                              time.text = value.format(context);
                              date = DateTime(date.year, date.month, date.day,
                                  value.hour, value.minute);
                            }
                          });
                        },
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.access_time),
                          labelText: '选择时间',
                          border: OutlineInputBorder(),
                        ),
                      ))
                    ],
                  )),
              Padding(
                padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: Row(
                  children: [
                    Expanded(
                      child: DropdownButtonFormField(
                          isExpanded: true,
                          value: priority,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: '优先级',
                              suffixIcon: Icon(Icons.priority_high)),
                          icon: Icon(null),
                          items: [
                            DropdownMenuItem(child: Text('默认'), value: 1),
                            DropdownMenuItem(
                                child: Text('!',
                                    style: TextStyle(
                                      color: Colors.amber,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20,
                                    )),
                                value: 2),
                            DropdownMenuItem(
                                child: Text('!!',
                                    style: TextStyle(
                                      color: Colors.amber[900],
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20,
                                    )),
                                value: 3),
                            DropdownMenuItem(
                                child: Text('!!!',
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20,
                                    )),
                                value: 4)
                          ],
                          onChanged: (value) {
                            dynamic temp = value;
                            priority = temp;
                            // print(priority);
                          }),
                    ),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Expanded(
                      child: DropdownButtonFormField(
                          isExpanded: true,
                          value: group,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: '分组',
                              suffixIcon: Icon(Icons.folder_open)),
                          icon: Icon(null),
                          items: dropDownMenuItem,
                          onChanged: (value) {
                            dynamic temp = value;
                            group = temp;
                            // print(group);
                          }),
                    )
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
                  child: Row(
                    children: [
                      Expanded(
                          child: TextField(
                        enableInteractiveSelection: false,
                        controller: repetition,
                        onTap: () {
                          FocusScope.of(context).requestFocus(FocusNode());
                          showDialog(
                              context: context,
                              builder: (BuildContext context) => SimpleDialog(
                                    title: Text('重复'),
                                    children: [
                                      SimpleDialogOption(
                                        child: Text('不重复'),
                                        onPressed: () {
                                          Navigator.of(context).pop('不重复');
                                        },
                                      ),
                                      SimpleDialogOption(
                                        child: Text('每天'),
                                        onPressed: () {
                                          Navigator.of(context).pop('每天');
                                        },
                                      ),
                                      SimpleDialogOption(
                                        child: Text('工作日'),
                                        onPressed: () {
                                          Navigator.of(context).pop('工作日');
                                        },
                                      ),
                                      SimpleDialogOption(
                                        child: Text('休息日'),
                                        onPressed: () {
                                          Navigator.of(context).pop('休息日');
                                        },
                                      ),
                                      SimpleDialogOption(
                                        child: Text('每周'),
                                        onPressed: () {
                                          Navigator.of(context).pop('每周');
                                        },
                                      ),
                                      SimpleDialogOption(
                                        child: Text('每月'),
                                        onPressed: () {
                                          Navigator.of(context).pop('每月');
                                        },
                                      ),
                                      SimpleDialogOption(
                                        child: Text('每季度'),
                                        onPressed: () {
                                          Navigator.of(context).pop('每季度');
                                        },
                                      ),
                                      SimpleDialogOption(
                                        child: Text('每半年'),
                                        onPressed: () {
                                          Navigator.of(context).pop('每半年');
                                        },
                                      ),
                                      SimpleDialogOption(
                                        child: Text('每年'),
                                        onPressed: () {
                                          Navigator.of(context).pop('每年');
                                        },
                                      )
                                    ],
                                  )).then((value) {
                            if (value != null) repetition.text = value;
                          });
                        },
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.date_range),
                          labelText: '重复',
                          border: OutlineInputBorder(),
                        ),
                      )),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Expanded(
                          child: TextField(
                        enableInteractiveSelection: false,
                        controller: alarm,
                        onTap: () {
                          FocusScope.of(context).requestFocus(FocusNode());
                          showDialog(
                              context: context,
                              builder: (BuildContext context) => SimpleDialog(
                                    title: Text('提醒'),
                                    children: [
                                      SimpleDialogOption(
                                        child: Text('不提醒'),
                                        onPressed: () {
                                          Navigator.of(context).pop('不提醒');
                                        },
                                      ),
                                      SimpleDialogOption(
                                        child: Text('即时提醒'),
                                        onPressed: () {
                                          Navigator.of(context).pop('即时提醒');
                                        },
                                      ),
                                      SimpleDialogOption(
                                        child: Text('提前10分钟'),
                                        onPressed: () {
                                          Navigator.of(context).pop('提前10分钟');
                                        },
                                      ),
                                      SimpleDialogOption(
                                        child: Text('提前半小时'),
                                        onPressed: () {
                                          Navigator.of(context).pop('提前半小时');
                                        },
                                      ),
                                      SimpleDialogOption(
                                        child: Text('提前1小时'),
                                        onPressed: () {
                                          Navigator.of(context).pop('提前1小时');
                                        },
                                      ),
                                      SimpleDialogOption(
                                        child: Text('提前2小时'),
                                        onPressed: () {
                                          Navigator.of(context).pop('提前2小时');
                                        },
                                      ),
                                      SimpleDialogOption(
                                        child: Text('提前1天'),
                                        onPressed: () {
                                          Navigator.of(context).pop('提前1天');
                                        },
                                      ),
                                      SimpleDialogOption(
                                        child: Text('提前2天'),
                                        onPressed: () {
                                          Navigator.of(context).pop('提前2天');
                                        },
                                      ),
                                      SimpleDialogOption(
                                        child: Text('提前1周'),
                                        onPressed: () {
                                          Navigator.of(context).pop('提前1周');
                                        },
                                      )
                                    ],
                                  )).then((value) {
                            if (value != null) alarm.text = value;
                          });
                        },
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.alarm),
                          labelText: '提醒',
                          border: OutlineInputBorder(),
                        ),
                      ))
                    ],
                  )),
              Padding(padding: EdgeInsets.only(top: 80))
            ],
          )),
    );
  }
}
