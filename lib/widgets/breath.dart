import 'package:flutter/material.dart';
import 'package:portfolio/responsive.dart';

class ProfilePicAnimation extends StatefulWidget {
  final Widget child;

  final Color shadowColor;
  const ProfilePicAnimation({
    super.key,
    required this.child,
    required this.shadowColor,
  });

  @override
  MyCustomWidgetState createState() => MyCustomWidgetState();
}

class MyCustomWidgetState extends State<ProfilePicAnimation>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _animation;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    _animationController.repeat(reverse: true);
    _animation = Tween(begin: 1.0, end: 15.0).animate(_animationController)
      ..addListener(
        () {
          setState(() {});
        },
      );
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    _animation.isDismissed;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double widthRes = MediaQuery.of(context).size.width;
    double heightRes = MediaQuery.of(context).size.height;
    return Center(
      child: Container(
        height: Responsive.isMobile(context) || Responsive.isTablet(context)
            ? heightRes * 0.420
            : heightRes * 0.470,
        //
        width: Responsive.isMobile(context) || Responsive.isTablet(context)
            ? widthRes * 0.420
            : widthRes * 0.350,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: widget.shadowColor.withOpacity(0.5),
              blurRadius: _animation.value + _animation.value,
              spreadRadius: 10,
              blurStyle: BlurStyle.normal,
            ),
          ],
        ),
        child: widget.child,
      ),
    );
  }
}
