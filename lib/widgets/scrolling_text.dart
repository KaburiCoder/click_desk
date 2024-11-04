import 'package:flutter/material.dart';

class ScrollingText extends StatefulWidget {
  final String? text;
  final int animationSec;
  final double fontSize;
  final double height;
  const ScrollingText(
      {super.key,
      this.text,
      this.animationSec = 20,
      this.fontSize = 24,
      this.height = 50});

  @override
  State<ScrollingText> createState() => _ScrollingTextState();
}

class _ScrollingTextState extends State<ScrollingText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  double _getTextWidth(String text, TextStyle style) {
    final TextPainter textPainter = TextPainter(
      text: TextSpan(text: text, style: style),
      maxLines: 1,
      textDirection: TextDirection.ltr,
    )..layout(minWidth: 0, maxWidth: double.infinity);
    return textPainter.width;
  }

  void _initAnimation(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final textStyle = TextStyle(
      fontSize: widget.fontSize,
      fontWeight: FontWeight.bold,
    );
    final textWidth = _getTextWidth(widget.text!, textStyle);
    final ratio = textWidth / screenWidth;
    final duration = Duration(seconds: widget.animationSec);

    _animation = Tween<double>(
      begin: 1.0,
      end: ratio > 0.9 ? -ratio : -0.9,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.linear,
    ));

    _controller.duration = duration;
    _controller.forward();
    _controller.repeat();
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: widget.animationSec),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _initAnimation(context);
  }

  @override
  void didUpdateWidget(ScrollingText oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.text != widget.text) {
      _initAnimation(context);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.text?.isEmpty ?? true) return const SizedBox();

    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Container(
          width: MediaQuery.of(context).size.width,
          height: widget.height,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.5),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          child: Transform.translate(
            offset: Offset(
              MediaQuery.of(context).size.width * _animation.value, // 좌에서 우로 이동
              0,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                // 흰색 테두리 효과를 위한 텍스트
                Text(
                  widget.text!,
                  style: TextStyle(
                    fontSize: widget.fontSize,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 2
                      ..color = Colors.white,
                  ),
                  overflow: TextOverflow.visible,
                  softWrap: false,
                ),
                // 메인 텍스트
                Text(
                  widget.text!,
                  style: TextStyle(
                    fontSize: widget.fontSize,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.visible,
                  softWrap: false,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
