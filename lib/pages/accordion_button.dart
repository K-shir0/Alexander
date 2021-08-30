import 'package:alexander/pages/theme/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccordionIconButton extends StatefulWidget {
  final double _iconSize;
  final String _label;
  final double _maxWidth;

  const AccordionIconButton(
      {Key? key,
      required double iconSize,
      required String label,
      required double maxWidth})
      : _iconSize = iconSize,
        _label = label,
        _maxWidth = maxWidth,
        super(key: key);

  @override
  // ignore: no_logic_in_create_state
  State<StatefulWidget> createState() => _State(width: _iconSize);
}

class _State extends State<AccordionIconButton> {
  // ignore: constant_identifier_names
  static const double INITIAL_OPACITY = 0.0;
  bool check = false;

  double opacity;
  double width;

  _State({
    required this.width,
  })  : opacity = INITIAL_OPACITY,
        super();

  @override
  Widget build(BuildContext context) {
    const Duration duration = Duration(milliseconds: 2);

    return AnimatedContainer(
      constraints: BoxConstraints(maxWidth: widget._maxWidth),
      width: width,
      curve: Curves.easeIn,
      duration: duration,
      child: InkWell(
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        onHover: (isHover) {
          setState(() {
            if (isHover) {
              opacity = 1.0;
              width = 100;
            } else {
              opacity = INITIAL_OPACITY;
              width = widget._iconSize;
            }
          });
        },
        onTap: () {},
        child: Wrap(
          children: [
            Container(
              width: 32,
              height: 32,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Palette.loginleft,
              ),
            ),
            Flexible(
              child: AnimatedOpacity(
                curve: Curves.easeIn,
                duration: duration,
                opacity: opacity,
                child: Container(
                  width: 150,
                  height: 32,
                  decoration: BoxDecoration(
                      border: Border.all(color: Palette.borderColor, width: 3),
                      color: Palette.bgContentsLightColor),
                  child: Text(
                    widget._label,
                    softWrap: false,
                    overflow: TextOverflow.fade,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Palette.mainTextColor),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
