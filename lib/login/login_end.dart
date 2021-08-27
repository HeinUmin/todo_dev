import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'login_main.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../res/next_button.dart';
import '../task/task_main_old.dart';

class LoginEnd extends StatelessWidget {
  LoginEnd({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: -148.0, end: -149.0),
            Pin(size: 690.0, start: -187.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xff00a0e9),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 127.0, middle: 0.3684),
            Pin(size: 127.0, middle: 0.6367),
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xff0d73ff),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 50.0, end: 50.0),
            Pin(size: 56.0, middle: 0.8),
            child: NextButton(next: TaskMain()),
          ),
          Pinned.fromPins(
            Pin(size: 222.0, middle: 0.5029),
            Pin(size: 134.0, middle: 0.2636),
            child: Text(
              '欢迎使用\n北洋ToDo',
              style: TextStyle(
                fontFamily: 'Noto Sans SC',
                fontSize: 50,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 168.0, end: 56.0),
            Pin(size: 168.0, middle: 0.552),
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xff00d2ff),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 72.0, middle: 0.676),
            Pin(size: 72.0, middle: 0.5404),
            child:
                // Adobe XD layer: 'icon/action/check_c…' (group)
                Stack(
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
                  Pin(start: 3.0, end: 3.0),
                  Pin(start: 5.0, end: 5.0),
                  child:
                      // Adobe XD layer: ' ↳Color' (shape)
                      SvgPicture.string(
                    _svg_m8cn9u,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
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
                  pageBuilder: () => LoginMain(),
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
        ],
      ),
    );
  }
}

const String _svg_m8cn9u =
    '<svg viewBox="3.0 5.0 66.0 62.0" ><path transform="translate(3.0, 5.0)" d="M 21 49.04477310180664 L 5.25 29.61194038391113 L 0 36.08955001831055 L 21 61.99999618530273 L 66 6.477611541748047 L 60.75000381469727 0 L 21 49.04477310180664 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_ejapec =
    '<svg viewBox="12.0 9.0 11.1 18.0" ><path transform="translate(12.0, 9.0)" d="M 11.10000038146973 2.115000009536743 L 8.987854957580566 0 L 0 9 L 8.987854957580566 18 L 11.10000038146973 15.88500022888184 L 4.23927116394043 9 L 11.10000038146973 2.115000009536743 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
