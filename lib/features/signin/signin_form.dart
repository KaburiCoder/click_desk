import 'package:click_desk/shared/providers/auth/auth_provider.dart';
import 'package:click_desk/shared/services/auth/auth_service.dart';
import 'package:click_desk/shared/utils/error_util.dart';
import 'package:click_desk/widgets/ev_button.dart';
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
  final TextEditingController _userId = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  void dispose() {
    _userId.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authSvc = ref.watch(authServiceProvider);

    return Form(
      key: _formKey,
      child: Container(
        constraints: const BoxConstraints(minWidth: 350),
        child: Column(
          children: [
            RoundInput(
              controller: _userId,
              hintText: 'Id',
              prefixIcon: Icons.person,
              textInputAction: TextInputAction.next,
              validator: (value) => validateEmpty(value, "아이디를 입력하세요."),
            ),
            const SizedBox(height: 16),
            RoundInput(
              controller: _password,
              prefixIcon: Icons.lock,
              hintText: 'Password',
              obscureText: true,
              validator: (value) => validateEmpty(value, "비밀번호를 입력하세요."),
            ),
            const SizedBox(height: 16),
            if (authSvc.hasError) ...[
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
                  parseError(authSvc.error, key: "_form"),
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

                final user = await ref
                    .read(authServiceProvider.notifier)
                    .signin(_userId.text, _password.text);

                ref.read(authProvider.notifier).setUser(user);
              },
              text: "로그인",
              isLoading: authSvc.isLoading,
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
