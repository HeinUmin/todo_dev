import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../res/data.dart';
import 'task_detail.dart';

class TaskSearch extends StatefulWidget {
  const TaskSearch({Key? key}) : super(key: key);

  @override
  _TaskSearchState createState() => _TaskSearchState();
}

class _TaskSearchState extends State<TaskSearch> {
  TextEditingController _search = TextEditingController();
  List<TaskViewModel> searchResult = [
    // TaskViewModel(
    //     name: 'Task 122222200202002222222262',
    //     time: DateTime(2022, 1, 1, 0, 0, 0),
    //     key: 0,
    //     weight: 4),
    // TaskViewModel(
    //     name: 'Task 122222200202002222222262',
    //     time: DateTime(2022, 1, 1, 0, 0, 0),
    //     key: 0,
    //     weight: 4),
  ];
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

  bool search(String str) {
    searchResult = [];
    bool has = false;
    for (int i = 0; i < taskData.length; i++) {
      var temp = taskData[i].task;
      for (int j = 0; j < temp.length; j++) {
        temp[j].groupKey = i;
        temp[j].key = j;
        if (temp[j].name.contains(str)) {
          searchResult.add(temp[j]);
          has = true;
        }
      }
    }
    return has;
  }

  Widget searchMain() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
          child: TextField(
            controller: _search,
            decoration: InputDecoration(
                labelText: '搜索事项',
                border: OutlineInputBorder(),
                labelStyle: TextStyle(fontWeight: FontWeight.w600),
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    setState(() {
                      if (!search(_search.text))
                        Fluttertoast.showToast(msg: '未检索到结果');
                    });
                  },
                )),
            onEditingComplete: () {
              FocusScope.of(context).requestFocus(FocusNode());
              setState(() {
                if (!search(_search.text))
                  Fluttertoast.showToast(msg: '未检索到结果');
              });
            },
            textInputAction: TextInputAction.search,
          ),
        ),
        Expanded(
            child: SingleChildScrollView(
                child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: searchResult.length,
                    itemBuilder: (context, index) {
                      TextEditingController _controller =
                          TextEditingController();
                      String time = searchResult[index].time.toString();
                      _controller.text = searchResult[index].name;
                      return Padding(
                        padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                        child: TextField(
                          enableInteractiveSelection: false,
                          controller: _controller,
                          onTap: () async {
                            FocusScope.of(context).requestFocus(FocusNode());
                            await Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => TaskDetail(
                                    group: searchResult[index].groupKey!,
                                    index: searchResult[index].key)));
                            setState(() {
                              search(_search.text);
                            });
                          },
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              suffixIcon: Center(
                                widthFactor: 1,
                                child: priorityText(searchResult[index].weight),
                              ),
                              suffixText: time.substring(0, time.length - 7),
                              suffixStyle: TextStyle(fontSize: 12)),
                        ),
                      );
                    })))
      ],
    );
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
          title: Text('搜索',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
              )),
          foregroundColor: Colors.blue,
          backgroundColor: Colors.white,
        ),
        body: searchMain());
  }
}
