import 'package:click_desk/constants/font_family.dart';
import 'package:click_desk/widgets/signin/signin_form.dart';
import 'package:click_desk/widgets/texts/base_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SigninPage extends ConsumerStatefulWidget {
  const SigninPage({super.key});

  @override
  ConsumerState<SigninPage> createState() => _SigininPageState();
}

class _SigininPageState extends ConsumerState<SigninPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.blue[50]!,
                Colors.blue[100]!,
                Colors.blue[50]!,
              ],
            ),
          ),
          child: Center(
            child: LayoutBuilder(builder: (context, constraints) {
              return const IntrinsicWidth(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BaseText(
                      'SIGN IN',
                      fontSize: 48,
                      fontFamily: FontFamily.jalnan2,
                    ),
                    SizedBox(height: 32),
                    SigninForm(),
                  ],
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
