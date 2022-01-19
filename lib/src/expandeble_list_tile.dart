import 'package:flutter/material.dart';
import 'package:extensions_tools/widget_ext.dart';

part 'expandable_section.dart';
part 'rotatable_section.dart';

/// The main class for the use an expanded card.
/// For the use of the expanded card, you need to call this widget.
/// Such as call to the widget:
///
/// ```
/// ExpandableListTile(
///   onExpandPressed: () {
///     TODO: Here you need to write a logic for the open/close card
///   },
///   title: Text('Item'),
///   expanded: cardBoolList[index],
///   child: SizedBox(),
/// ),
/// ```
///
/// How you can see this widget are easy to use and customization.
class ExpandableListTile extends StatelessWidget {
  const ExpandableListTile({
    Key? key,
    required this.title,
    required this.expanded,
    required this.child,
    this.onExpandPressed,
    this.padding = const EdgeInsets.all(8.0),
    this.borderRadius,
    this.shadowColor,
    this.elevation = 1.0,
    this.color,
  }) : super(key: key);

  /// The title in the card. Displayed when a card is open and close
  final Widget title;

  /// The field answers by the state is an open card or are close
  final bool expanded;

  /// A child a card body. When the card is open you see this the child
  final Widget child;

  /// Is optional field, this is the field that need use for card  opened
  final GestureTapCallback? onExpandPressed;

  /// A card retreat from side left, right, top, bottom
  final EdgeInsets padding;

  /// A card border-radius. Change the form of an angle
  final BorderRadiusGeometry? borderRadius;

  /// Change shadow color in the card.
  final Color? shadowColor;

  /// Change elevation value in the card.
  final double elevation;

  /// Change color in the card
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.card,
      borderRadius: borderRadius,
      elevation: elevation,
      color: color,
      shadowColor: shadowColor,
      child: Column(
        children: <Widget>[
          ListTile(
            title: title,
            onTap: onExpandPressed,
            trailing: IconButton(
              onPressed: onExpandPressed,
              icon: RotatableSection(
                rotated: expanded,
                child: SizedBox(
                  height: 30,
                  width: 30,
                  child: Icon(Icons.expand_more),
                ),
              ),
            ),
          ),
          ExpandableSection(
            child: child,
            expand: expanded,
          )
        ],
      ),
    ).paddingModifier(padding);
  }
}
