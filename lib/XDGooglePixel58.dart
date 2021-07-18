import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './XDGooglePixel54.dart';
import 'package:adobe_xd/page_link.dart';
import './XDGooglePixel53.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDGooglePixel58 extends StatelessWidget {
  XDGooglePixel58({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: -106.0, end: 0.0),
            Pin(size: 499.0, start: -205.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xff00a0e9),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 332.0, start: -90.0),
            Pin(size: 332.0, start: -66.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xff0d73ff),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 213.0, end: -148.0),
            Pin(size: 213.0, start: -44.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xff00d2ff),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 170.0, start: 24.0),
            Pin(size: 46.0, middle: 0.1814),
            child: Text(
              '新用户注册',
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
            Pin(start: 24.0, end: 24.0),
            Pin(start: 318.0, end: 477.0),
            child:
                // Adobe XD layer: 'Light 🌕/ Text fiel…' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(startFraction: 0.0, endFraction: 0.0),
                  Pin(startFraction: 0.0, endFraction: 0.0),
                  child:
                      // Adobe XD layer: '🔲🎨 Container l Co…' (shape)
                      Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      border: Border.all(
                          width: 1.0, color: const Color(0x1f000000)),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 16.5, end: 296.5),
                  Pin(size: 21.0, start: 17.0),
                  child:
                      // Adobe XD layer: '✏️ Input text' (text)
                      Text(
                    '学号',
                    style: TextStyle(
                      fontFamily: 'Noto Sans SC',
                      fontSize: 16,
                      color: const Color(0x99000000),
                      letterSpacing: 0.15,
                      height: 1.5,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 24.0, end: 24.0),
            Pin(start: 398.0, end: 397.0),
            child:
                // Adobe XD layer: 'Light 🌕/ Text fiel…' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(startFraction: 0.0, endFraction: 0.0),
                  Pin(startFraction: 0.0, endFraction: 0.0),
                  child:
                      // Adobe XD layer: '🔲🎨 Container l Co…' (shape)
                      Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      border: Border.all(
                          width: 1.0, color: const Color(0x1f000000)),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 16.5, end: 280.5),
                  Pin(size: 21.0, start: 17.0),
                  child:
                      // Adobe XD layer: '✏️ Input text' (text)
                      Text(
                    '用户名',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 16,
                      color: const Color(0x99000000),
                      letterSpacing: 0.15,
                      height: 1.5,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 56.0, middle: 0.5015),
            Pin(start: 623.0, end: 172.0),
            child:
                // Adobe XD layer: 'Light 🌕/ FAB / 1. …' (group)
                PageLink(
              links: [
                PageLinkInfo(
                  ease: Curves.easeInOut,
                  duration: 0.8,
                  pageBuilder: () => XDGooglePixel54(),
                ),
              ],
              child: Stack(
                children: <Widget>[
                  Pinned.fromPins(
                    Pin(size: 56.0, end: 0.0),
                    Pin(start: 0.0, end: 0.0),
                    child:
                        // Adobe XD layer: 'Circle Elevation/Da…' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromPins(
                          Pin(start: 0.0, end: 0.0),
                          Pin(size: 56.0, middle: 0.5),
                          child:
                              // Adobe XD layer: 'Shadow 3' (shape)
                              Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(28.0),
                              color: const Color(0xffffffff),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x33000000),
                                  offset: Offset(0, 2),
                                  blurRadius: 4,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(start: 0.0, end: 0.0),
                          Pin(size: 56.0, middle: 0.5),
                          child:
                              // Adobe XD layer: 'Shadow 2' (shape)
                              Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(28.0),
                              color: const Color(0xffffffff),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x1f000000),
                                  offset: Offset(0, 1),
                                  blurRadius: 10,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(start: 0.0, end: 0.0),
                          Pin(size: 56.0, middle: 0.5),
                          child:
                              // Adobe XD layer: 'Shadow 1' (shape)
                              Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(28.0),
                              color: const Color(0xffffffff),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x24000000),
                                  offset: Offset(0, 4),
                                  blurRadius: 5,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(start: 0.0, end: 0.0),
                    Pin(start: 0.0, end: 0.0),
                    child:
                        // Adobe XD layer: 'Fill' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromPins(
                          Pin(start: 0.0, end: 0.0),
                          Pin(size: 56.0, middle: 0.5),
                          child:
                              // Adobe XD layer: '🎨 FAB Color' (shape)
                              Container(
                            decoration: BoxDecoration(
                              color: const Color(0xff00a0e9),
                            ),
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 56.0, start: 0.0),
                          Pin(size: 56.0, end: 0.0),
                          child:
                              // Adobe XD layer: 'FAB Mask' (shape)
                              Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(start: 0.0, end: 0.0),
                    Pin(start: 0.0, end: 0.0),
                    child:
                        // Adobe XD layer: 'State' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromPins(
                          Pin(startFraction: 0.0, endFraction: 1.0),
                          Pin(startFraction: 0.0, endFraction: 1.0),
                          child:
                              // Adobe XD layer: 'States/Light 🌕/Pri…' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromPins(
                                Pin(start: 0.0, end: 0.0),
                                Pin(start: 0.0, end: 0.0),
                                child:
                                    // Adobe XD layer: 'States/Light 🌕/Pri…' (shape)
                                    Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4.0),
                                    color: const Color(0x00ffffff),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 56.0, start: 0.0),
                          Pin(size: 56.0, end: 0.0),
                          child:
                              // Adobe XD layer: 'FAB Mask' (shape)
                              Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(size: 24.0, end: 16.0),
                    Pin(size: 24.0, start: 16.0),
                    child:
                        // Adobe XD layer: 'icon/navigation/che…' (group)
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
                          Pin(size: 7.4, middle: 0.5181),
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
                  ),
                ],
              ),
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
                  pageBuilder: () => XDGooglePixel53(),
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
            Pin(start: 24.0, end: 24.0),
            Pin(start: 478.0, end: 317.0),
            child:
                // Adobe XD layer: 'Light 🌕/ Text fiel…' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(startFraction: 0.0, endFraction: 0.0),
                  Pin(startFraction: 0.0, endFraction: 0.0),
                  child:
                      // Adobe XD layer: '🔲🎨 Container l Co…' (shape)
                      Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      border: Border.all(
                          width: 1.0, color: const Color(0x1f000000)),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 16.5, end: 296.5),
                  Pin(size: 21.0, start: 17.0),
                  child:
                      // Adobe XD layer: '✏️ Input text' (text)
                      Text(
                    '密码',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 16,
                      color: const Color(0x99000000),
                      letterSpacing: 0.15,
                      height: 1.5,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, end: 12.0),
                  Pin(size: 24.0, middle: 0.5),
                  child:
                      // Adobe XD layer: 'Trailing icon' (group)
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
                        Pin(start: 1.0, end: 1.0),
                        Pin(start: 4.5, end: 4.5),
                        child:
                            // Adobe XD layer: ' ↳Color' (shape)
                            SvgPicture.string(
                          _svg_mfadcp,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 264.0, middle: 0.4961),
            Pin(size: 24.0, end: 24.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 24.0, start: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'icon/toggle/check_b…' (group)
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
                        Pin(start: 3.0, end: 3.0),
                        child:
                            // Adobe XD layer: ' ↳Color' (shape)
                            SvgPicture.string(
                          _svg_n6sqze,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
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

const String _svg_55ze1w =
    '<svg viewBox="8.6 6.0 7.4 12.0" ><path transform="translate(8.6, 6.0)" d="M 1.408097147941589 0 L 0 1.409999966621399 L 4.573819160461426 6 L 0 10.59000015258789 L 1.408097147941589 12 L 7.400000095367432 6 L 1.408097147941589 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_ejapec =
    '<svg viewBox="12.0 9.0 11.1 18.0" ><path transform="translate(12.0, 9.0)" d="M 11.10000038146973 2.115000009536743 L 8.987854957580566 0 L 0 9 L 8.987854957580566 18 L 11.10000038146973 15.88500022888184 L 4.23927116394043 9 L 11.10000038146973 2.115000009536743 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_mfadcp =
    '<svg viewBox="1.0 4.5 22.0 15.0" ><path transform="translate(1.0, 4.5)" d="M 10.99979972839355 15.00030040740967 C 8.580410003662109 15.00030040740967 6.254580020904541 14.27276039123535 4.273760318756104 12.89632034301758 C 2.339249849319458 11.55207061767578 0.8614100217819214 9.68595027923584 0 7.499700546264648 C 0.8615800142288208 5.313470840454102 2.339420080184937 3.447880268096924 4.273760318756104 2.103860139846802 C 6.254650115966797 0.7275002598762512 8.580470085144043 2.384185791015625e-07 10.99979972839355 2.384185791015625e-07 C 13.41945934295654 2.384185791015625e-07 15.74539947509766 0.7275002598762512 17.72617149353027 2.103860139846802 C 19.66039085388184 3.447870254516602 21.13812065124512 5.313720703125 21.99960136413574 7.499700546264648 C 21.13801002502441 9.686400413513184 19.6602897644043 11.55226993560791 17.72617149353027 12.89632034301758 C 15.74547004699707 14.27276039123535 13.41951942443848 15.00030040740967 10.99979972839355 15.00030040740967 Z M 10.99979972839355 2.500200271606445 C 8.243069648742676 2.500200271606445 6.000300407409668 4.74297046661377 6.000300407409668 7.499700546264648 C 6.000300407409668 10.25693035125732 8.243069648742676 12.50010013580322 10.99979972839355 12.50010013580322 C 13.75702953338623 12.50010013580322 16.00020027160645 10.25693035125732 16.00020027160645 7.499700546264648 C 16.00020027160645 4.74297046661377 13.75702953338623 2.500200271606445 10.99979972839355 2.500200271606445 Z M 10.99979972839355 10.50030040740967 C 9.345759391784668 10.50030040740967 8.000100135803223 9.154240608215332 8.000100135803223 7.499700546264648 C 8.000100135803223 5.845660209655762 9.345759391784668 4.5 10.99979972839355 4.5 C 12.65433979034424 4.5 14.00039958953857 5.845660209655762 14.00039958953857 7.499700546264648 C 14.00039958953857 9.154240608215332 12.65433979034424 10.50030040740967 10.99979972839355 10.50030040740967 Z" fill="#000000" fill-opacity="0.6" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_n6sqze =
    '<svg viewBox="3.0 3.0 18.0 18.0" ><path transform="translate(3.0, 3.0)" d="M 16.00020027160645 18 L 1.999799966812134 18 C 0.8971099853515625 18 0 17.10289001464844 0 16.00020027160645 L 0 1.999799966812134 C 0 0.8971099853515625 0.8971099853515625 0 1.999799966812134 0 L 16.00020027160645 0 C 17.10289001464844 0 18 0.8971099853515625 18 1.999799966812134 L 18 16.00020027160645 C 18 17.10289001464844 17.10289001464844 18 16.00020027160645 18 Z M 1.999799966812134 1.999799966812134 L 1.999799966812134 16.00020027160645 L 16.00020027160645 16.00020027160645 L 16.00020027160645 1.999799966812134 L 1.999799966812134 1.999799966812134 Z" fill="#6c6c6c" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';