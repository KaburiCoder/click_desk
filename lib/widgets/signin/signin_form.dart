import 'package:click_desk/pages/regist/regist_page.dart';
import 'package:click_desk/providers/auth/auth_provider.dart';
import 'package:click_desk/utils/error_util.dart';
import 'package:click_desk/widgets/round_input.dart';
import 'package:click_desk/widgets/spacer.dart';
import 'package:click_desk/widgets/texts/base_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SigninForm extends ConsumerStatefulWidget {
  const SigninForm({super.key});

  @override
  ConsumerState<SigninForm> createState() => _SigninFormState();
}

class _SigninFormState extends ConsumerState<SigninForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController userId = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final auth = ref.watch(authProvider);

    return Form(
      key: _formKey,
      child: Container(
        constraints: const BoxConstraints(minWidth: 350),
        child: Column(
          children: [
            RoundInput(
              controller: userId,
              hintText: 'Id',
              prefixIcon: Icons.person,
              textInputAction: TextInputAction.next,
              validator: (value) => validateEmpty(value, "아이디를 입력하세요."),
            ),
            const SizedBox(height: 16),
            RoundInput(
              controller: password,
              prefixIcon: Icons.lock,
              hintText: 'Password',
              obscureText: true,
              validator: (value) => validateEmpty(value, "비밀번호를 입력하세요."),
            ),
            const SizedBox(height: 16),
            if (auth.hasError) ...[
              Container(
                width: double.infinity,
                alignment: Alignment.center,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                decoration: BoxDecoration(
                  color: Colors.red[50],
                  border: Border.all(color: Colors.red, width: 1),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: BaseText(
                  parseError(auth.error, key: "_form"),
                  color: Colors.red,
                ),
              ),
              const HeightSpacer(16)
            ],
            // const SizedBox(height: 24),
            EvButton(
              backgroundColor: Colors.blue,
              minWidth: 400,
              onPressed: () async {
                if (!_formKey.currentState!.validate()) return;

                await ref
                    .read(authProvider.notifier)
                    .signin(userId.text, password.text);
              },
              text: "로그인",
              isLoading: auth.isLoading,
            ),
          ],
        ),
      ),
    );
  }
}

String? validateEmpty(String? value, String validateText) {
  if (value?.isEmpty ?? true) {
    return validateText;
  }
  return null;
}
