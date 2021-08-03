// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:todo_dev/login/login_end.dart';
import 'package:todo_dev/login/login_warning.dart';
import 'package:adobe_xd/page_link.dart';
import 'login_warning.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'login_end.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../res/data.dart';

bool selected = false;
TextEditingController id = TextEditingController();
TextEditingController password = TextEditingController();

class LoginMain extends StatelessWidget {
  LoginMain({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: -187.0, end: -17.0),
            Pin(size: 597.0, start: -370.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xff00a0e9),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 68.0, start: 24.0),
            Pin(size: 46.0, middle: 0.1814),
            child: Text(
              '登录',
              style: TextStyle(
                fontFamily: 'Noto Sans SC',
                fontSize: 34,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 127.0, end: -52.0),
            Pin(size: 127.0, start: 17.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xff0d73ff),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 186.0, start: -112.0),
            Pin(size: 186.0, start: -186.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xff00d2ff),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 24.0, end: 24.0),
            Pin(size: 56.0, middle: 0.4),
            child: TextField(
                decoration: InputDecoration(labelText: "学号/手机号/邮箱/用户名"),
                controller: id),
          ),
          Pinned.fromPins(
            Pin(start: 24.0, end: 24.0),
            Pin(size: 56.0, middle: 0.5),
            child: TextField(
              decoration: InputDecoration(labelText: "密码"),
              obscureText: true,
              controller: password,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 50.0, end: 50.0),
            Pin(size: 56.0, middle: 0.8),
            child: LoginButton(),
          ),
          Pinned.fromPins(
              Pin(start: 0, endFraction: 0.5), Pin(size: 56.0, middle: 0.6),
              child: TextButton(
                  child: Text("忘记密码"),
                  onPressed: () =>
                      Fluttertoast.showToast(msg: "请前往 i.twt.edu.cn 进行密码重置"))),
          Pinned.fromPins(
              Pin(startFraction: 0.5, end: 0), Pin(size: 56.0, middle: 0.6),
              child: TextButton(
                  child: Text("新用户注册"),
                  onPressed: () =>
                      Fluttertoast.showToast(msg: "请前往 i.twt.edu.cn 进行注册"))),
          Pinned.fromPins(
            Pin(size: 36.0, start: 12.0),
            Pin(size: 36.0, start: 44.0),
            child:
                // Adobe XD layer: 'icon/navigation/che…' (group)
                PageLink(
              links: [
                PageLinkInfo(
                  ease: Curves.easeInOut,
                  duration: 0.8,
                  pageBuilder: () => LoginWarning(),
                ),
              ],
              child: Stack(
                children: <Widget>[
                  Pinned.fromPins(
                    Pin(start: 0.0, end: 0.0),
                    Pin(start: 0.0, end: 0.0),
                    child:
                        // Adobe XD layer: 'Boundary' (shape)
                        Container(
                      decoration: BoxDecoration(),
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(size: 11.1, middle: 0.4819),
                    Pin(size: 18.0, middle: 0.5),
                    child:
                        // Adobe XD layer: ' ↳Color' (shape)
                        SvgPicture.string(
                      _svg_ejapec,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 264.0, middle: 0.4961),
            Pin(size: 24.0, end: 24.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                    Pin(size: 24.0, start: 0.0), Pin(start: 0.0, end: 0.0),
                    child: LoginCheckBox()),
                Pinned.fromPins(
                  Pin(start: 24.0, end: 0.0),
                  Pin(size: 19.0, middle: 0.4),
                  child:
                      // Adobe XD layer: '↳ ✏️ Label' (text)
                      Text.rich(
                    TextSpan(
                      style: TextStyle(
                        fontFamily: 'Noto Sans SC',
                        fontSize: 14,
                        color: const Color(0xff6c6c6c),
                        letterSpacing: 1.246,
                        height: 1.1428571428571428,
                      ),
                      children: [
                        TextSpan(
                          text: '我已阅读并同意北洋Todo',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: '隐私政策',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class LoginCheckBox extends StatefulWidget {
  @override
  _LoginCheckBoxState createState() => _LoginCheckBoxState();
}

class _LoginCheckBoxState extends State<LoginCheckBox> {
  @override
  Widget build(BuildContext context) {
    return Checkbox(
        value: selected,
        onChanged: (value) {
          setState(() {
            selected = value!;
          });
        });
  }
}

class LoginButton extends StatefulWidget {
  LoginButton({Key? key}) : super(key: key);
  @override
  _LoginButtonState createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        child: Stack(
          // Adobe XD layer: 'icon/navigation/che…' (group)
          children: <Widget>[
            Pinned.fromPins(
              Pin(start: 0.0, end: 0.0),
              Pin(start: 0.0, end: 0.0),
              child:
                  // Adobe XD layer: 'Boundary' (shape)
                  Container(
                decoration: BoxDecoration(),
              ),
            ),
            Pinned.fromPins(
              Pin(size: 7.4, middle: 0.5),
              Pin(size: 12.0, middle: 0.5),
              child:
                  // Adobe XD layer: ' ↳Color' (shape)
                  SvgPicture.string(
                _svg_55ze1w,
                allowDrawingOutsideViewBox: true,
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
        onPressed: () {
          if (id.text.isEmpty)
            Fluttertoast.showToast(msg: "请输入用户名");
          else if (password.text.isEmpty)
            Fluttertoast.showToast(msg: "请输入密码");
          else if (!selected)
            Fluttertoast.showToast(msg: "请同意用户隐私政策");
          else if (verify(id.text, password.text) == "0")
            Fluttertoast.showToast(msg: "用户名或密码错误");
          else
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => LoginEnd()));
        },
        style: ButtonStyle(
          shape: MaterialStateProperty.all(CircleBorder()),
        ));
  }
}

verify(String id, String password) {
  if (login[id] == password)
    return "1";
  else
    return "0";
}

const String _svg_55ze1w =
    '<svg viewBox="8.6 6.0 7.4 12.0" ><path transform="translate(8.6, 6.0)" d="M 1.408097147941589 0 L 0 1.409999966621399 L 4.573819160461426 6 L 0 10.59000015258789 L 1.408097147941589 12 L 7.400000095367432 6 L 1.408097147941589 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';

const String _svg_ejapec =
    '<svg viewBox="12.0 9.0 11.1 18.0" ><path transform="translate(12.0, 9.0)" d="M 11.10000038146973 2.115000009536743 L 8.987854957580566 0 L 0 9 L 8.987854957580566 18 L 11.10000038146973 15.88500022888184 L 4.23927116394043 9 L 11.10000038146973 2.115000009536743 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
