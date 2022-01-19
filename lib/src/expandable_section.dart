part of 'expandeble_list_tile.dart';

/// This class by design make for display body when a card is opened
class ExpandableSection extends StatefulWidget {

  /// A child a card body. When the card is open you see this the child
  final Widget child;

  /// The field answers by the state is an open card or are close
  final bool expand;

  ExpandableSection({
    this.expand = false,
    required this.child,
  });

  @override
  _ExpandableSectionState createState() => _ExpandableSectionState();
}

class _ExpandableSectionState extends State<ExpandableSection>
    with SingleTickerProviderStateMixin {
  late final AnimationController animationController;
  late final Animation<double> sizeAnimation;
  late final Animation<double> opacityAnimation;

  @override
  void initState() {
    super.initState();
    prepareAnimations();
    _runExpandCheck();
  }

  void prepareAnimations() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );
    sizeAnimation = CurvedAnimation(
      parent: animationController,
      curve: Curves.fastOutSlowIn,
    );
    opacityAnimation = CurvedAnimation(
      parent: animationController,
      curve: Curves.slowMiddle,
    );
  }

  void _runExpandCheck() {
    if (widget.expand) {
      animationController.forward();
    } else {
      animationController.reverse();
    }
  }

  @override
  void didUpdateWidget(ExpandableSection oldWidget) {
    super.didUpdateWidget(oldWidget);
    _runExpandCheck();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: opacityAnimation,
      child: SizeTransition(
        axisAlignment: 1.0,
        sizeFactor: sizeAnimation,
        child: widget.child,
      ),
    );
  }
}
