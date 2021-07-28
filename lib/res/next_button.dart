import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NextButton extends StatefulWidget {
  NextButton({Key? key, required this.next}) : super(key: key);
  final next;
  @override
  _NextButtonState createState() => _NextButtonState();
}

class _NextButtonState extends State<NextButton> {
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
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => widget.next));
        },
        style: ButtonStyle(
          shape: MaterialStateProperty.all(CircleBorder()),
        ));
  }
}

const String _svg_55ze1w =
    '<svg viewBox="8.6 6.0 7.4 12.0" ><path transform="translate(8.6, 6.0)" d="M 1.408097147941589 0 L 0 1.409999966621399 L 4.573819160461426 6 L 0 10.59000015258789 L 1.408097147941589 12 L 7.400000095367432 6 L 1.408097147941589 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
