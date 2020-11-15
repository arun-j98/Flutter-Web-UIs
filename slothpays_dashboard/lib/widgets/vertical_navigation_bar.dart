import 'package:flutter/material.dart';
import 'package:slothpays_dashboard/widgets/buttons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../theme_colors.dart';

class VerticalNavigationBar extends StatefulWidget {
  final Widget title; //On top of navigation bar
  // final List<ButtonWithAnimation> primaryActions; //On middle of navigation bar
  // final List<ButtonWithAnimation> secondaryActions; //On bottom of navigtion bar

  VerticalNavigationBar({
    @required this.title,
    // @required this.primaryActions,
    // this.secondaryActions,
  });

  @override
  _VerticalNavigationBarState createState() => _VerticalNavigationBarState();
}

class _VerticalNavigationBarState extends State<VerticalNavigationBar> {
  int _index = 0;

  void _setIndex(int index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: lightGrey,
        boxShadow: [
          BoxShadow(
            color: grey,
            blurRadius: 20.0,
            offset: Offset(-1, 0),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          //Title of the navigationbar----------------------------
          Container(
            margin: const EdgeInsets.only(left: 50),
            child: widget.title,
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ButtonWithAnimation(
                  icon: FontAwesomeIcons.home,
                  title: "Home",
                  onSelected: _setIndex,
                  index: 0,
                  isSelected: _index == 0 ? true : false,
                ),
                ButtonWithAnimation(
                  icon: FontAwesomeIcons.exclamationTriangle,
                  title: "Actions Required",
                  onSelected: _setIndex,
                  index: 1,
                  isSelected: _index == 1 ? true : false,
                ),
                ButtonWithAnimation(
                  icon: FontAwesomeIcons.solidFolder,
                  title: "Orders",
                  onSelected: _setIndex,
                  index: 2,
                  isSelected: _index == 2 ? true : false,
                ),
                ButtonWithAnimation(
                  icon: FontAwesomeIcons.fileInvoiceDollar,
                  title: "Invoice",
                  onSelected: _setIndex,
                  index: 3,
                  isSelected: _index == 3 ? true : false,
                ),
                ButtonWithNotification(
                  ButtonWithAnimation(
                    icon: FontAwesomeIcons.solidBell,
                    title: "Notification",
                    onSelected: _setIndex,
                    index: 4,
                    isSelected: _index == 4 ? true : false,
                  ),
                ),
                // ButtonWithAnimation(
                //   icon: FontAwesomeIcons.solidBell,
                //   title: "Notification",
                // ),
                ButtonWithAnimation(
                  icon: FontAwesomeIcons.cog,
                  title: "Settings",
                  onSelected: _setIndex,
                  index: 5,
                  isSelected: _index == 5 ? true : false,
                )
              ],
            ),
          ),
          Spacer(),
          ButtonWithAnimation(
            icon: FontAwesomeIcons.signOutAlt,
            title: "Signout",
            onSelected: _setIndex,
            index: 6,
            isSelected: _index == 6 ? true : false,
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
