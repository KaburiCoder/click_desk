import 'package:click_desk/constants/image_paths.dart';
import 'package:click_desk/utils/widget_util.dart';
import 'package:click_desk/widgets/signin/signin_form.dart';
import 'package:click_desk/widgets/tab_outside_to_close_keyboard.dart';
import 'package:click_desk/widgets/texts/xl_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SigninPage extends ConsumerStatefulWidget {
  const SigninPage({super.key});

  @override
  ConsumerState<SigninPage> createState() => _SigininPageState();
}

class _SigininPageState extends ConsumerState<SigninPage> {
  final GlobalKey _testkey = GlobalKey();
  final double _minHeight = 500;

  @override
  Widget build(BuildContext context) {
    final screenHeight = getScreenSize(context).height;

    return Scaffold(
      body: TapOutsideToCloseKeyboard(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: screenHeight < _minHeight ? _minHeight : screenHeight,
            decoration: const BoxDecoration(
                gradient: RadialGradient(
                    colors: [Colors.lightBlueAccent, Colors.white],
                    center: Alignment.bottomRight,
                    radius: 1.1)),
            child: IntrinsicHeight(
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.blueAccent,
                          blurRadius: 2,
                          blurStyle: BlurStyle.outer)
                    ],
                  ),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        top: 8,
                        left: 8,
                        child: Container(
                          color: Colors.white,
                          child: Image.asset(
                            key: _testkey,
                            ImagePaths.clickSoftLogo,
                            height: 60,
                          ),
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 60, vertical: 80),
                        child: Column(
                          mainAxisAlignment:
                              MainAxisAlignment.center, // 세로로 가운데 정렬
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            XlHanbitText(
                              'Click Desk Sign In',
                              color: Colors.blue,
                            ),
                            SizedBox(height: 32),
                            IntrinsicWidth(child: SigninForm()),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
