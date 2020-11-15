import 'package:flutter/material.dart';
import '../theme_colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ButtonWithAnimation extends StatefulWidget {
  final String title;
  final IconData icon;
  final bool isSelected;
  final Function onSelected;
  final int index;

  ButtonWithAnimation({
    @required this.title,
    @required this.icon,
    @required this.onSelected,
    @required this.index,
    this.isSelected = false,
  });

  @override
  _ButtonWithAnimationState createState() => _ButtonWithAnimationState();
}

class _ButtonWithAnimationState extends State<ButtonWithAnimation>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  Animation _animation;

  final ColorTween _colorTween =
      ColorTween(begin: lightGrey, end: Colors.grey[200]);

  // bool newNotification = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        value: 0.0, duration: Duration(milliseconds: 50), vsync: this);
    _animation = CurvedAnimation(
        parent: _animationController, curve: Curves.easeOutSine);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onHover: (isHovering) {
          if (isHovering) {
            _animationController.forward(from: 0.0);
          } else {
            _animationController.reverse();
          }
        },
        onTap: () => widget.onSelected(widget.index),
        child: AnimatedBuilder(
          animation: _animation,
          builder: (_, __) {
            return Container(
              decoration: BoxDecoration(
                color: widget.isSelected
                    ? Colors.grey[50]
                    : _colorTween.evaluate(_animation),
              ),
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 4,
                        decoration: BoxDecoration(
                          color: widget.isSelected ? blue : Colors.transparent,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(4),
                            bottomRight: Radius.circular(4),
                          ),
                        ),
                      ),
                      SizedBox(width: 40),
                      Container(
                        width: 20,
                        child: Center(
                          child: FaIcon(
                            widget.icon,
                            color: widget.isSelected ? blue : deepBlue,
                            size: 16,
                          ),
                        ),
                      ),
                      SizedBox(width: 8.0),
                      Text(
                        widget.title,
                        style: TextStyle(
                            color: widget.isSelected ? blue : deepBlue,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ));
  }
}

class ButtonWithNotification extends StatefulWidget {
  final ButtonWithAnimation _buttonWithAnimation;
  ButtonWithNotification(this._buttonWithAnimation);
  @override
  _ButtonWithNotificationState createState() => _ButtonWithNotificationState();
}

class _ButtonWithNotificationState extends State<ButtonWithNotification> {
  bool newNotification = true;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        widget._buttonWithAnimation,
        Positioned(
          right: 20,
          top: 22,
          child: Container(
            margin: const EdgeInsets.only(
              right: 20,
            ),
            child: Container(
              height: 6,
              width: 6,
              decoration: BoxDecoration(
                color:
                    newNotification ? Colors.orange[800] : Colors.transparent,
                borderRadius: BorderRadius.circular(3.0),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
