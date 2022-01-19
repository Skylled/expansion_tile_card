part of 'expandeble_list_tile.dart';

/// Animation for the icon when her state is of the open and are close
class RotatableSection extends StatefulWidget {

  /// A child a card body. When the card is open you see this the child
  final Widget child;

  /// The rotate value for the icon button on the card
  final bool rotated;

  /// Initial spin for the lower bound animation
  final double initialSpin;

  /// Ending spin for the upper bound animation
  final double endingSpin;

  RotatableSection({
    required this.child,
    this.rotated = false,
    this.initialSpin = 0,
    this.endingSpin = 0.5,
  });

  @override
  _RotatableSectionState createState() => _RotatableSectionState();
}

class _RotatableSectionState extends State<RotatableSection>
    with SingleTickerProviderStateMixin {
  late final AnimationController animationController;
  late final Animation<double> animation;

  @override
  void initState() {
    super.initState();
    prepareAnimations();
    _runCheck();
  }

  final double _oneSpin = 6.283184;

  void prepareAnimations() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
      lowerBound: _oneSpin * widget.initialSpin,
      upperBound: _oneSpin * widget.endingSpin,
    );
    animation = CurvedAnimation(
      parent: animationController,
      curve: Curves.linear,
    );
  }

  void _runCheck() {
    if (widget.rotated) {
      animationController.forward();
    } else {
      animationController.reverse();
    }
  }

  @override
  void didUpdateWidget(RotatableSection oldWidget) {
    super.didUpdateWidget(oldWidget);

    _runCheck();
  }

  @override
  void dispose() {
    animationController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      child: widget.child,
      builder: (context, _widget) {
        return Transform.rotate(
          angle: animationController.value,
          child: _widget,
        );
      },
    );
  }
}
