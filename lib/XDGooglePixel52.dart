import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './XDGooglePixel53.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:adobe_xd/blend_mask.dart';
import './XDGooglePixel51.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDGooglePixel52 extends StatelessWidget {
  XDGooglePixel52({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 298.0, end: -94.0),
            Pin(size: 298.0, start: -179.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xff00a0e9),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 294.0, start: 24.0),
            Pin(size: 46.0, middle: 0.1826),
            child: Text(
              '我们需要您的授权...',
              style: TextStyle(
                fontFamily: 'Noto Sans SC',
                fontSize: 34,
                color: const Color(0xff2a2a2a),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
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
                  pageBuilder: () => XDGooglePixel53(),
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
            Pin(size: 378.0, end: -323.0),
            Pin(size: 378.0, start: -20.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xff00d2ff),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 127.0, end: -198.0),
            Pin(size: 127.0, start: 106.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xff0d73ff),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 24.0, end: 24.0),
            Pin(size: 91.0, middle: 0.4184),
            child:
                // Adobe XD layer: 'Light 🌕/ Card/Imag…' (group)
                Stack(
              children: [
// background:
                Positioned.fill(
                  child:
                      // Adobe XD layer: 'Container' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child:
                            // Adobe XD layer: 'Light 🌕/ Card /1. …' (group)
                            Stack(
                          children: <Widget>[
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(start: 0.0, end: 0.0),
                              child:
                                  // Adobe XD layer: 'Light 🌕/Elevation/…' (group)
                                  Stack(
                                children: <Widget>[
                                  Pinned.fromPins(
                                    Pin(start: 0.0, end: 0.0),
                                    Pin(start: 0.0, end: 0.0),
                                    child:
                                        // Adobe XD layer: 'Shadow' (group)
                                        BlendMask(
                                      blendMode: BlendMode.multiply,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromPins(
                                            Pin(start: 0.0, end: 0.0),
                                            Pin(start: 0.0, end: 0.0),
                                            child:
                                                // Adobe XD layer: 'Rectangle' (shape)
                                                Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                                color: const Color(0xffffffff),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color:
                                                        const Color(0x33000000),
                                                    offset: Offset(0, 1),
                                                    blurRadius: 3,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Pinned.fromPins(
                                            Pin(start: 0.0, end: 0.0),
                                            Pin(start: 0.0, end: 0.0),
                                            child:
                                                // Adobe XD layer: 'Rectangle' (shape)
                                                Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                                color: const Color(0xffffffff),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color:
                                                        const Color(0x1f000000),
                                                    offset: Offset(0, 2),
                                                    blurRadius: 1,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Pinned.fromPins(
                                            Pin(start: 0.0, end: 0.0),
                                            Pin(start: 0.0, end: 0.0),
                                            child:
                                                // Adobe XD layer: 'Rectangle' (shape)
                                                Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                                color: const Color(0xffffffff),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color:
                                                        const Color(0x24000000),
                                                    offset: Offset(0, 1),
                                                    blurRadius: 1,
                                                  ),
                                                ],
                                              ),
                                            ),
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
                                  // Adobe XD layer: 'Container' (shape)
                                  Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4.0),
                                  color: const Color(0xffffffff),
                                ),
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(start: 0.0, end: 0.0),
                              child:
                                  // Adobe XD layer: 'States' (shape)
                                  Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 8.0),
                        child:
                            // Adobe XD layer: '🎨 Color l Container' (shape)
                            Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.0),
                            color: const Color(0xffffffff),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned.fill(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 1.0, 0.0, 14.0),
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromPins(
                          Pin(start: 16.0, endFraction: 0.0466),
                          Pin(startFraction: 0.7237, endFraction: 0.0),
                          child:
                              // Adobe XD layer: '✏️ Secondary text' (text)
                              Text(
                            '以便于与您的系统日历同步日程',
                            style: TextStyle(
                              fontFamily: 'Noto Sans SC',
                              fontSize: 14,
                              color: const Color(0x99000000),
                              letterSpacing: 0.252,
                              height: 1.4285714285714286,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(start: 0.0, end: 0.0),
                          Pin(size: 44.0, start: 0.0),
                          child:
                              // Adobe XD layer: 'Light 🌕/ Card/ΩEle…' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromPins(
                                Pin(start: 0.0, end: 0.0),
                                Pin(start: 0.0, end: 0.0),
                                child:
                                    // Adobe XD layer: 'Surface' (shape)
                                    Container(
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                  ),
                                ),
                              ),
                              Pinned.fromPins(
                                Pin(start: 16.0, endFraction: 0.5449),
                                Pin(size: 27.0, start: 11.0),
                                child:
                                    // Adobe XD layer: '✏️ Headline 6' (text)
                                    Text(
                                  '读取及写入日历',
                                  style: TextStyle(
                                    fontFamily: 'Noto Sans SC',
                                    fontSize: 20,
                                    color: const Color(0xde000000),
                                    letterSpacing: 0.15000000953674317,
                                    fontWeight: FontWeight.w500,
                                    height: 1.2,
                                  ),
                                  textHeightBehavior: TextHeightBehavior(
                                      applyHeightToFirstAscent: false),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 24.0, end: 24.0),
            Pin(size: 91.0, middle: 0.5697),
            child:
                // Adobe XD layer: 'Light 🌕/ Card/Imag…' (group)
                Stack(
              children: [
// background:
                Positioned.fill(
                  child:
                      // Adobe XD layer: 'Container' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child:
                            // Adobe XD layer: 'Light 🌕/ Card /1. …' (group)
                            Stack(
                          children: <Widget>[
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(start: 0.0, end: 0.0),
                              child:
                                  // Adobe XD layer: 'Light 🌕/Elevation/…' (group)
                                  Stack(
                                children: <Widget>[
                                  Pinned.fromPins(
                                    Pin(start: 0.0, end: 0.0),
                                    Pin(start: 0.0, end: 0.0),
                                    child:
                                        // Adobe XD layer: 'Shadow' (group)
                                        BlendMask(
                                      blendMode: BlendMode.multiply,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromPins(
                                            Pin(start: 0.0, end: 0.0),
                                            Pin(start: 0.0, end: 0.0),
                                            child:
                                                // Adobe XD layer: 'Rectangle' (shape)
                                                Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                                color: const Color(0xffffffff),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color:
                                                        const Color(0x33000000),
                                                    offset: Offset(0, 1),
                                                    blurRadius: 3,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Pinned.fromPins(
                                            Pin(start: 0.0, end: 0.0),
                                            Pin(start: 0.0, end: 0.0),
                                            child:
                                                // Adobe XD layer: 'Rectangle' (shape)
                                                Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                                color: const Color(0xffffffff),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color:
                                                        const Color(0x1f000000),
                                                    offset: Offset(0, 2),
                                                    blurRadius: 1,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Pinned.fromPins(
                                            Pin(start: 0.0, end: 0.0),
                                            Pin(start: 0.0, end: 0.0),
                                            child:
                                                // Adobe XD layer: 'Rectangle' (shape)
                                                Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                                color: const Color(0xffffffff),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color:
                                                        const Color(0x24000000),
                                                    offset: Offset(0, 1),
                                                    blurRadius: 1,
                                                  ),
                                                ],
                                              ),
                                            ),
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
                                  // Adobe XD layer: 'Container' (shape)
                                  Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4.0),
                                  color: const Color(0xffffffff),
                                ),
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(start: 0.0, end: 0.0),
                              child:
                                  // Adobe XD layer: 'States' (shape)
                                  Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 8.0),
                        child:
                            // Adobe XD layer: '🎨 Color l Container' (shape)
                            Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.0),
                            color: const Color(0xffffffff),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned.fill(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 1.0, 0.0, 14.0),
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromPins(
                          Pin(start: 16.0, endFraction: 0.0466),
                          Pin(startFraction: 0.7237, endFraction: 0.0),
                          child:
                              // Adobe XD layer: '✏️ Secondary text' (text)
                              Text(
                            '以便于为您自动同步班级待办事项',
                            style: TextStyle(
                              fontFamily: 'Noto Sans SC',
                              fontSize: 14,
                              color: const Color(0x99000000),
                              letterSpacing: 0.252,
                              height: 1.4285714285714286,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(start: 0.0, end: 0.0),
                          Pin(size: 44.0, start: 0.0),
                          child:
                              // Adobe XD layer: 'Light 🌕/ Card/ΩEle…' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromPins(
                                Pin(start: 0.0, end: 0.0),
                                Pin(start: 0.0, end: 0.0),
                                child:
                                    // Adobe XD layer: 'Surface' (shape)
                                    Container(
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                  ),
                                ),
                              ),
                              Pinned.fromPins(
                                Pin(start: 16.0, endFraction: 0.1362),
                                Pin(size: 27.0, start: 11.0),
                                child:
                                    // Adobe XD layer: '✏️ Headline 6' (text)
                                    Text(
                                  '天外天账号信息及您的组织关系',
                                  style: TextStyle(
                                    fontFamily: 'Noto Sans SC',
                                    fontSize: 20,
                                    color: const Color(0xde000000),
                                    letterSpacing: 0.15000000953674317,
                                    fontWeight: FontWeight.w500,
                                    height: 1.2,
                                  ),
                                  textHeightBehavior: TextHeightBehavior(
                                      applyHeightToFirstAscent: false),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
                  pageBuilder: () => XDGooglePixel51(),
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
                      _svg_ekd4c,
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

const String _svg_55ze1w =
    '<svg viewBox="8.6 6.0 7.4 12.0" ><path transform="translate(8.6, 6.0)" d="M 1.408097147941589 0 L 0 1.409999966621399 L 4.573819160461426 6 L 0 10.59000015258789 L 1.408097147941589 12 L 7.400000095367432 6 L 1.408097147941589 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_ekd4c =
    '<svg viewBox="12.0 9.0 11.1 18.0" ><path transform="translate(12.0, 9.0)" d="M 11.10000038146973 2.115000009536743 L 8.987854957580566 0 L 0 9 L 8.987854957580566 18 L 11.10000038146973 15.88500022888184 L 4.23927116394043 9 L 11.10000038146973 2.115000009536743 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
