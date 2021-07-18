import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './XDGooglePixel52.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDGooglePixel51 extends StatelessWidget {
  XDGooglePixel51({
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
            Pin(size: 56.0, middle: 0.5015),
            Pin(start: 623.0, end: 172.0),
            child:
                // Adobe XD layer: 'Light 🌕/ FAB / 1. …' (group)
                PageLink(
              links: [
                PageLinkInfo(
                  ease: Curves.easeInOut,
                  duration: 0.8,
                  pageBuilder: () => XDGooglePixel52(),
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

const String _svg_55ze1w =
    '<svg viewBox="8.6 6.0 7.4 12.0" ><path transform="translate(8.6, 6.0)" d="M 1.408097147941589 0 L 0 1.409999966621399 L 4.573819160461426 6 L 0 10.59000015258789 L 1.408097147941589 12 L 7.400000095367432 6 L 1.408097147941589 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
