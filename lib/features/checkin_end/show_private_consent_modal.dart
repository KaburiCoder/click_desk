import 'package:click_desk/features/checkin_end/providers/private_consent_modal_provider.dart';
import 'package:click_desk/pages/regist/regist_page.dart';
import 'package:click_desk/shared/providers/checkin/checkin_provider.dart';
import 'package:click_desk/routes/nav.dart';
import 'package:click_desk/features/checkin_end/consent_doc_dialog.dart';
import 'package:click_desk/widgets/signature_modal.dart';
import 'package:click_desk/widgets/round_check_box.dart';
import 'package:click_desk/widgets/simple_check_box.dart';
import 'package:click_desk/widgets/spacer.dart';
import 'package:click_desk/widgets/texts/base_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<PrivateConsentModalState?> showPrivateConsentModal(
    BuildContext context) {
  return showModalBottomSheet(
    constraints: BoxConstraints(minWidth: MediaQuery.of(context).size.width),
    context: context,
    backgroundColor: Colors.white,
    builder: (BuildContext context) {
      return const SingleChildScrollView(child: PrivateConsentModal());
    },
  );
}

class PrivateConsentModal extends ConsumerStatefulWidget {
  const PrivateConsentModal({
    super.key,
  });

  @override
  ConsumerState<PrivateConsentModal> createState() =>
      _PrivateConsentModalState();
}

class _PrivateConsentModalState extends ConsumerState<PrivateConsentModal> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 60.0, vertical: 60.0),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleWidget(),
          HeightSpacer(40),
          AllConsentCheckBox(),
          HeightSpacer(40),
          ConsentCheckBoxes(),
          HeightSpacer(40),
          ConsentButton(),
        ],
      ),
    );
  }
}

class ConsentCheckBoxes extends ConsumerWidget {
  const ConsentCheckBoxes({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(privateConsentModalProvider);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        children: [
          Expanded(
            child: ConsentCheckBox(
              text: "개인정보 수집 및 이용 동의",
              isRequired: true,
              checked: state.privateChecked,
              onCheckChanged:
                  ref.read(privateConsentModalProvider.notifier).privateChanged,
            ),
          ),
          Expanded(
            child: ConsentCheckBox(
              text: "마케팅 활용 동의",
              isRequired: false,
              checked: state.marketingChecked,
              onCheckChanged: ref
                  .read(privateConsentModalProvider.notifier)
                  .marketingChanged,
            ),
          ),
        ],
      ),
    );
  }
}

class ConsentButton extends ConsumerWidget {
  const ConsentButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(privateConsentModalProvider);

    return EvButton(
      onPressed: state.privateChecked
          ? () async {
              final buffer = await showSignatureModal(context);
              if (buffer != null && context.mounted) {
                Nav.of(context).pop(state.copyWith(signImageBuffer: buffer));
              }
            }
          : null,
      text: "확인",
      minWidth: double.infinity,
      backgroundColor: Colors.blue,
    );
  }
}

class AllConsentCheckBox extends ConsumerWidget {
  const AllConsentCheckBox({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(privateConsentModalProvider);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RoundCheckBox(
          text: const BaseText("약관에 모두 동의합니다.", fontSize: 28),
          checked: state.allChecked,
          onCheckChanged:
              ref.read(privateConsentModalProvider.notifier).allCheckChanged,
        ),
        TextButton(
            onPressed: () {
              showConsentDocDialog(context);
            },
            child: const BaseText("내용보기",
                fontSize: 18,
                color: Colors.grey,
                decoration: TextDecoration.underline)),
      ],
    );
  }
}

class TitleWidget extends ConsumerWidget {
  const TitleWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final checkin = ref.watch(checkinProvider);
    return BaseText(
      "${checkin.patientState.suname}님의 이용약관 동의",
      fontSize: 32,
      bold: true,
    );
  }
}

class ConsentCheckBox extends StatelessWidget {
  final bool isRequired;
  final String text;
  final bool checked;
  final Function(bool checked) onCheckChanged;
  const ConsentCheckBox({
    super.key,
    required this.isRequired,
    required this.text,
    required this.onCheckChanged,
    required this.checked,
  });

  @override
  Widget build(BuildContext context) {
    return SimpleCheckBox(
      text: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BaseText(isRequired ? "(필수)" : "(선택)",
              color: isRequired ? Colors.blue : Colors.grey, fontSize: 24),
          const WidthSpacer(),
          BaseText(text, fontSize: 24),
        ],
      ),
      checked: checked,
      onCheckChanged: onCheckChanged,
    );
  }
}
