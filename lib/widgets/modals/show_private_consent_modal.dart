import 'package:click_desk/widgets/round_check_box.dart';
import 'package:click_desk/widgets/simple_check_box.dart';
import 'package:click_desk/widgets/spacer.dart';
import 'package:click_desk/widgets/texts/base_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<bool?> showPrivateConsentModal(BuildContext context) {
  return showModalBottomSheet(
    constraints: BoxConstraints(minWidth: MediaQuery.of(context).size.width),
    context: context,
    backgroundColor: Colors.white,
    builder: (BuildContext context) {
      return const PrivateConsentModal();
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
  bool _allChecked = false;
  bool _privateChecked = false;
  bool _maketingChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 60.0, vertical: 60.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _titleWidget(),
          const HeightSpacer(40),
          _allConsentCheckBoxWidget(
            allChecked: _allChecked,
            allCheckChanged: (checked) {
              setState(() {
                _allChecked = !_allChecked;
                if (_allChecked) {
                  _privateChecked = true;
                  _maketingChecked = true;
                }
              });
            },
          ),
          const HeightSpacer(40),
          _consentCheckBoxesWidget(
            privateChecked: _privateChecked,
            maketingChecked: _maketingChecked,
            onPrivateChanged: (checked) {
              setState(() {
                _privateChecked = !_privateChecked;
                _allChecked = _privateChecked && _maketingChecked;
              });
            },
            onMaketingChanged: (checked) {
              setState(() {
                _maketingChecked = !_maketingChecked;
                _allChecked = _privateChecked && _maketingChecked;
              });
            },
          ),
          const HeightSpacer(40),
          _consentButtonWidget()
        ],
      ),
    );
  }
}

Padding _consentCheckBoxesWidget({
  required bool privateChecked,
  required bool maketingChecked,
  required Function(bool checked) onPrivateChanged,
  required Function(bool checked) onMaketingChanged,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30.0),
    child: Row(
      children: [
        Expanded(
          child: ConsentCheckBox(
            text: "개인정보 수집 및 이용 동의",
            isRequired: true,
            checked: privateChecked,
            onCheckChanged: onPrivateChanged,
          ),
        ),
        Expanded(
          child: ConsentCheckBox(
            text: "마케팅 활용 동의",
            isRequired: false,
            checked: maketingChecked,
            onCheckChanged: onMaketingChanged,
          ),
        ),
      ],
    ),
  );
}

ElevatedButton _consentButtonWidget() {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        minimumSize: const Size(double.infinity, 80)),
    onPressed: () {},
    child: const BaseText(
      "확인",
      color: Colors.white,
      fontSize: 24,
    ),
  );
}

Row _allConsentCheckBoxWidget(
    {required bool allChecked,
    required Function(bool checked) allCheckChanged}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      RoundCheckBox(
        text: const BaseText("약관에 모두 동의합니다.", fontSize: 28),
        checked: allChecked,
        onCheckChanged: allCheckChanged,
      ),
      TextButton(
          onPressed: () {},
          child: const BaseText("전체보기",
              fontSize: 18,
              color: Colors.grey,
              decoration: TextDecoration.underline)),
    ],
  );
}

BaseText _titleWidget() {
  return const BaseText(
    "모모모님의 이용약관 동의",
    fontSize: 32,
    bold: true,
  );
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
