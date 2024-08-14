import 'package:click_desk/shared/providers/auth/auth_provider.dart';
import 'package:click_desk/widgets/texts/base_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignoutButton extends ConsumerWidget {
  const SignoutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(0, 55)
      ),
        onPressed: () {
          ref.read(authProvider.notifier).signout();
        },
        child: const BaseText("로그아웃"));
  }
}
