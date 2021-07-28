import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'login_warning.dart';
import '../res/next_button.dart';

class LoginStart extends StatelessWidget {
  LoginStart({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: -235.0, end: -43.0),
            Pin(size: 671.0, start: -211.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xff00a0e9),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 154.0, middle: 0.5021),
            Pin(size: 102.0, middle: 0.275),
            child: Text(
              '您好',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 77,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 50.0, end: 50.0),
            Pin(size: 56.0, middle: 0.8),
            child: NextButton(next: LoginWarning()),
          ),
          Pinned.fromPins(
            Pin(size: 177.0, end: -118.0),
            Pin(size: 177.0, middle: 0.2226),
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xff00d2ff),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 127.0, start: -81.0),
            Pin(size: 127.0, middle: 0.4724),
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xff0d73ff),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
