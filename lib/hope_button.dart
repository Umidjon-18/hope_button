library hope_button;

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HopeButton extends StatefulWidget {
  HopeButton({
    super.key,
    required this.width,
    required this.height,
    required this.onTap,
    required this.title,
    this.bgColor = Colors.white,
    this.borderColor,
    this.borderGradient,
    this.borderRadius = 0,
    this.borderWidth = 0,
    this.childrenAlignment = MainAxisAlignment.spaceEvenly,
    this.leading,
    this.margin = EdgeInsets.zero,
    this.padding = EdgeInsets.zero,
    this.trailing,
  });
  final double width;
  final double height;
  double? borderRadius;
  double? borderWidth;
  Color? borderColor;
  Color? bgColor;
  EdgeInsets? padding;
  EdgeInsets? margin;
  LinearGradient? borderGradient;
  MainAxisAlignment? childrenAlignment;
  final Function() onTap;
  Widget? leading;
  final Widget title;
  Widget? trailing;

  @override
  State<HopeButton> createState() => _HopeButtonState();
}

class _HopeButtonState extends State<HopeButton> with SingleTickerProviderStateMixin {
  late AnimationController animationController = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 100),
  );
  late Animation animation = Tween<double>(begin: 1, end: 0.9).animate(
    animationController,
  );
  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (BuildContext context, Widget? child) {
        return Transform.scale(
          scale: animation.value,
          child: Container(
            width: widget.width + widget.borderWidth!,
            height: widget.height,
            padding: EdgeInsets.all(widget.borderWidth!),
            margin: widget.margin,
            decoration: BoxDecoration(
              gradient: widget.borderGradient,
              borderRadius: BorderRadius.circular(widget.borderRadius!),
            ),
            child: Container(
              height: widget.height,
              padding: widget.padding,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(widget.borderRadius!),
                color: Colors.white,
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    animationController.forward().then((value) => animationController.reverse());
                    widget.onTap();
                  },
                  borderRadius: BorderRadius.circular(widget.borderRadius!),
                  child: Container(
                    width: widget.width,
                    height: widget.height,
                    padding: widget.padding,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(widget.borderRadius! - 1),
                      color: widget.bgColor,
                    ),
                    child: Row(
                      mainAxisAlignment: widget.childrenAlignment!,
                      children: getWidgets(),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  List<Widget> getWidgets() {
    if (widget.leading == null) {
      if (widget.trailing == null) {
        return [widget.title];
      }
      return [widget.title, widget.trailing!];
    } else {
      if (widget.trailing == null) {
        return [widget.leading!, widget.title];
      }
      return [widget.leading!, widget.title, widget.trailing!];
    }
  }
}
