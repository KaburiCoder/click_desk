import 'package:click_desk/shared/constants/font_family.dart';
import 'package:click_desk/widgets/texts/base_text.dart';
import 'package:flutter/material.dart';

class AnimatedTextColor extends StatefulWidget {
  const AnimatedTextColor({super.key});

  @override
  State<AnimatedTextColor> createState() => _AnimatedTextColorState();
}

class _AnimatedTextColorState extends State<AnimatedTextColor>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();

    // AnimationController 초기화
    _controller = AnimationController(
      duration: const Duration(seconds: 6),
      vsync: this,
    )..repeat(reverse: true); // 애니메이션 반복 (앞뒤로)

    // ColorTween을 사용하여 색상 변화 애니메이션 설정
    _colorAnimation = TweenSequence<Color?>(
      [
        TweenSequenceItem(
          weight: 1.0,
          tween: ColorTween(
            begin: Colors.greenAccent,
            end: Colors.amber,
          ),
        ),
        TweenSequenceItem(
          weight: 1.0,
          tween: ColorTween(
            begin: Colors.amber,
            end: Colors.white,
          ),
        ),
        TweenSequenceItem(
          weight: 1.0,
          tween: ColorTween(
            begin: Colors.white,
            end: Colors.deepOrangeAccent,
          ),
        ),
        TweenSequenceItem(
          weight: 1.0,
          tween: ColorTween(
            begin: Colors.deepOrangeAccent,
            end: Colors.greenAccent,
          ),
        ),
      ],
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose(); // 애니메이션 컨트롤러 해제
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _colorAnimation,
      builder: (context, child) {
        return Stack(
          children: [
            BaseText(
              "터치하면 접수가 진행됩니다.",
              foreground: Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = 4
                ..color = Colors.black,
              fontSize: 24,
              fontFamily: FontFamily.kccHanbit,
            ),
            BaseText(
              "터치하면 접수가 진행됩니다.",
              fontSize: 24,
              fontFamily: FontFamily.kccHanbit,
              color: _colorAnimation.value, // 애니메이션 색상 적용
            ),
          ],
        );
      },
    );
  }
}
