/// Material Color Picker

library material_colorpicker;

import 'package:flutter/material.dart';

import 'utils.dart';

// The Color Picker which contains Material Design Color Palette.
class MaterialPicker extends StatefulWidget {
  MaterialPicker({
    required this.pickerColor,
    required this.onColorChanged,
    this.enableLabel: false,
  });

  final Color pickerColor;
  final ValueChanged<Color> onColorChanged;
  final bool enableLabel;

  @override
  State<StatefulWidget> createState() => _MaterialPickerState();
}

class _MaterialPickerState extends State<MaterialPicker> {
  final List<List<Color>> _colorTypes = [
    [Colors.transparent],
    [Colors.red, Colors.redAccent],
    [Colors.pink, Colors.pinkAccent],
    [Colors.purple, Colors.purpleAccent],
    [Colors.deepPurple, Colors.deepPurpleAccent],
    [Colors.indigo, Colors.indigoAccent],
    [Colors.blue, Colors.blueAccent],
    [Colors.lightBlue, Colors.lightBlueAccent],
    [Colors.cyan, Colors.cyanAccent],
    [Colors.teal, Colors.tealAccent],
    [Colors.green, Colors.greenAccent],
    [Colors.lightGreen, Colors.lightGreenAccent],
    [Colors.lime, Colors.limeAccent],
    [Colors.yellow, Colors.yellowAccent],
    [Colors.amber, Colors.amberAccent],
    [Colors.orange, Colors.orangeAccent],
    [Colors.deepOrange, Colors.deepOrangeAccent],
    [Colors.brown],
    [Colors.grey],
    [Colors.blueGrey],
    [Colors.black, Colors.white]
  ];

  List<Color> _currentColor = [Colors.transparent];
  Color? _currentShading;

  List<Color> _shadingTypes(List<Color> colors) {
    List<Color> result = [];

    colors.forEach((Color colorType) {
      if (colorType == Colors.grey) {
        result.addAll([
          50,
          100,
          200,
          300,
          350,
          400,
          500,
          600,
          700,
          800,
          850,
          900
        ].map((int shade) {
          return Colors.grey[shade]!;
        }).toList());
      } else if (colorType == Colors.black) {
        result.addAll([
          Colors.white70,
          Colors.white60,
          Colors.white54,
          Colors.white38,
          Colors.white30,
          Colors.white24,
          Colors.white12,
          Colors.white10
        ]);
      } else if (colorType == Colors.white) {
        result.addAll([
          Colors.transparent,
          Colors.black12,
          Colors.black26,
          Colors.black38,
          Colors.black45,
          Colors.black54,
          Colors.black87
        ]);
      } else if (colorType == Colors.transparent) {
        result.addAll([
          Colors.white,
          Color(0xFFFFFF00),
          Color(0xFF00FF00),
          Color(0xFF00FFFF),
          Color(0xFF0000FF),
          Color(0xFFFF00FF),
          Color(0xFFFF0000),
          Colors.black
        ]);
      } else if (colorType is MaterialAccentColor) {
        result.addAll([100, 200, 400, 700].map((int shade) {
          return colorType[shade]!;
        }).toList());
      } else if (colorType is MaterialColor) {
        result.addAll(
            [50, 100, 200, 300, 400, 500, 600, 700, 800, 900].map((int shade) {
          return colorType[shade]!;
        }).toList());
      } else {
        result.add(Color(0));
      }
    });

    return result;
  }

  @override
  void initState() {
    _colorTypes.forEach((List<Color> _colors) {
      _shadingTypes(_colors).forEach((Color color) {
        if (widget.pickerColor.value == color.value) {
          return setState(() {
            _currentColor = _colors;
            _currentShading = color;
          });
        }
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Orientation _orientation = MediaQuery.of(context).orientation;
    bool _isPortrait = _orientation == Orientation.portrait;

    Widget _colorList() {
      return Container(
        width: _isPortrait ? 60.0 : null,
        height: _isPortrait ? null : 60.0,
        decoration: BoxDecoration(
          border: _isPortrait
              ? Border(right: BorderSide(color: Colors.grey[300]!, width: 1.0))
              : Border(top: BorderSide(color: Colors.grey[300]!, width: 1.0)),
        ),
        child: ListView(
          scrollDirection: _isPortrait ? Axis.vertical : Axis.horizontal,
          children: [
            _isPortrait
                ? const Padding(padding: EdgeInsets.only(top: 7.0))
                : const Padding(padding: EdgeInsets.only(left: 7.0)),
            ..._colorTypes.map((List<Color> _colors) {
              Color _colorType = _colors[0];
              return GestureDetector(
                onDoubleTap: () {
                  widget.onColorChanged(_colorType);
                  Navigator.of(context).pop(_colorType);
                },
                onTap: () => setState(() => _currentColor = _colors),
                child: Container(
                  color: Color(0),
                  padding: _isPortrait
                      ? EdgeInsets.fromLTRB(0.0, 7.0, 0.0, 7.0)
                      : EdgeInsets.fromLTRB(7.0, 0.0, 7.0, 0.0),
                  child: Align(
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      width: 25.0,
                      height: 25.0,
                      decoration: BoxDecoration(
                        color: _colorType,
                        borderRadius: BorderRadius.circular(60.0),
                        boxShadow: _currentColor == _colors
                            ? [
                                _colorType == Colors.transparent
                                    ? BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 5.0,
                                        spreadRadius: 2.0)
                                    : BoxShadow(
                                        color: _colorType,
                                        blurRadius: 5.0,
                                        spreadRadius: 2.0),
                              ]
                            : null,
                        border: _colorType == Colors.transparent
                            ? Border.all(color: Colors.grey, width: 1.0)
                            : null,
                      ),
                    ),
                  ),
                ),
              );
            }),
            _isPortrait
                ? const Padding(padding: EdgeInsets.only(top: 5.0))
                : const Padding(padding: EdgeInsets.only(left: 5.0)),
          ],
        ),
      );
    }

    Widget _shadingList() {
      return ListView(
        scrollDirection: _isPortrait ? Axis.vertical : Axis.horizontal,
        children: [
          _isPortrait
              ? Padding(padding: EdgeInsets.only(top: 15.0))
              : Padding(padding: EdgeInsets.only(left: 15.0)),
          ..._shadingTypes(_currentColor).map((Color _color) {
            return GestureDetector(
              onDoubleTap: () {
                widget.onColorChanged(_color);
                Navigator.of(context).pop(_color);
              },
              onTap: () {
                setState(() => _currentShading = _color);
                widget.onColorChanged(_color);
              },
              child: Container(
                color: Color(0),
                padding: _isPortrait
                    ? EdgeInsets.fromLTRB(0.0, 7.0, 0.0, 7.0)
                    : EdgeInsets.fromLTRB(7.0, 0.0, 7.0, 0.0),
                child: Align(
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    width: _isPortrait ? 250.0 : 50.0,
                    height: _isPortrait ? 50.0 : 220.0,
                    decoration: BoxDecoration(
                      color: _color,
                      boxShadow: _currentShading == _color
                          ? [
                              _currentColor[0] == Colors.black
                                  ? BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 5.0,
                                      spreadRadius: 2.0)
                                  : BoxShadow(
                                      color: _color,
                                      blurRadius: 5.0,
                                      spreadRadius: 2.0),
                            ]
                          : null,
                      border: _currentColor[0] == Colors.black
                          ? Border.all(color: Colors.grey, width: 1.0)
                          : null,
                    ),
                    child: (_isPortrait && widget.enableLabel)
                        ? Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              _color.toString().substring(0, 10) == 'Color(0xff'
                                  ? ('#' +
                                      (_color
                                              .toString()
                                              .replaceFirst('Color(0xff', '')
                                              .replaceFirst(')', ''))
                                          .toUpperCase() +
                                      '  ')
                                  : ('0x' +
                                      (_color
                                              .toString()
                                              .replaceFirst('Color(0x', '')
                                              .replaceFirst(')', ''))
                                          .toUpperCase()),
                              style: TextStyle(
                                color: _color == Colors.transparent
                                    ? Color(0xFFEFEFEF)
                                    : (useWhiteForeground(_color)
                                        ? Colors.white
                                        : Colors.black),
                                fontWeight: _currentShading == _color
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                              ),
                            ),
                          )
                        : Container(),
                  ),
                ),
              ),
            );
          }),
          _isPortrait
              ? const Padding(padding: const EdgeInsets.only(top: 15.0))
              : const Padding(padding: const EdgeInsets.only(left: 15.0)),
        ],
      );
    }

    switch (_orientation) {
      case Orientation.portrait:
        return SizedBox(
          height: 500.0,
          width: 350.0,
          child: Row(
            children: <Widget>[
              _colorList(),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: _shadingList(),
                ),
              ),
            ],
          ),
        );
      case Orientation.landscape:
        return SizedBox(
          width: 500.0,
          height: 300.0,
          child: Column(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: _shadingList(),
                ),
              ),
              _colorList(),
            ],
          ),
        );
      default:
        return Container();
    }
  }
}
