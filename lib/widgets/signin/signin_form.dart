import 'package:click_recept/models/auth_state/auth_state.dart';
import 'package:click_recept/providers/auth/auth_notifier_provider.dart';
import 'package:click_recept/widgets/custom_input.dart';
import 'package:click_recept/widgets/texts/base_text.dart';
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
    final authState = ref.watch(authNotifierProvider);

    return Form(
      key: _formKey,
      child: Container(
        constraints: const BoxConstraints(minWidth: 300),
        child: Column(
          children: [
            CustomInput(
              controller: userId,
              hintText: 'Id',
              prefixIcon: Icons.person,
              emptyText: "아이디를 입력하세요.",
            ),
            const SizedBox(height: 16),
            CustomInput(
              controller: password,
              prefixIcon: Icons.lock,
              hintText: 'Password',
              obscureText: true,
              emptyText: "비밀번호를 입력하세요.",
            ),
            const SizedBox(height: 16),
            if (authState.error?.error?['_form'] != null)
              Container(
                width: double.infinity,
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.red[50],
                  border: Border.all(color: Colors.red, width: 1),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: BaseText(
                  authState.error!.error!['_form'].toString(),
                  color: Colors.red,
                ),
              ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: authState.loadingState == LoadingState.loading
                  ? null
                  : () async {
                      if (!_formKey.currentState!.validate()) return;

                      await ref
                          .read(authNotifierProvider.notifier)
                          .signin(userId.text, password.text);
                    },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: const Size(double.infinity, 50), // 버튼 크기 조정
              ),
              child: authState.loadingState == LoadingState.loading
                  ? const CircularProgressIndicator(color: Colors.white)
                  : const BaseText('로그인', color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
