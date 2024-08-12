import 'package:click_desk/pages/regist/regist_page.dart';
import 'package:click_desk/shared/utils/string_util.dart';
import 'package:click_desk/widgets/dash.dart';
import 'package:click_desk/features/dialogs/base_alert_dialog.dart';
import 'package:click_desk/widgets/labeld_row.dart';
import 'package:click_desk/widgets/round_input.dart';
import 'package:click_desk/widgets/spacer.dart';
import 'package:click_desk/widgets/texts/base_text.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:remedi_kopo/remedi_kopo.dart';

class InputsWidget2 extends ConsumerStatefulWidget {
  final Function({
    required String phoneNumber,
    required String postalCode,
    required String address,
    required String addressDetail,
  }) onSubmit;
  const InputsWidget2({super.key, required this.onSubmit});

  @override
  ConsumerState<InputsWidget2> createState() => InputsWidget2State();
}

class InputsWidget2State extends ConsumerState<InputsWidget2> {
  final TextEditingController _phoneNum1 = TextEditingController();
  final TextEditingController _phoneNum2 = TextEditingController();
  final TextEditingController _phoneNum3 = TextEditingController();
  final FocusNode _phoneNum2FocusNode = FocusNode();
  final FocusNode _phoneNum3FocusNode = FocusNode();

  final TextEditingController _postal1 = TextEditingController();
  final TextEditingController _postal2 = TextEditingController();

  final TextEditingController _address1 = TextEditingController();
  final TextEditingController _address2 = TextEditingController();

  final FocusNode _address2FocusNode = FocusNode();

  String get phoneNumber => _phoneNum1.text + _phoneNum2.text + _phoneNum3.text;
  String get postalCode => _postal1.text + _postal2.text;
  String get address => _address1.text.trim();
  String get addressDetail => _address2.text.trim();

  @override
  void initState() {
    super.initState();

    _phoneNum1.text = "010";
  }

  @override
  void dispose() {
    _phoneNum1.dispose();
    _phoneNum2.dispose();
    _phoneNum3.dispose();
    _phoneNum2FocusNode.dispose();
    _phoneNum3FocusNode.dispose();

    _postal1.dispose();
    _postal2.dispose();

    _address1.dispose();
    _address2.dispose();

    super.dispose();
  }

  void focusPhoneNum2() {
    FocusScope.of(context).requestFocus(_phoneNum2FocusNode);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const SizedBox(),
        Column(
          children: [
            phoneNumWidget(context),
            const HeightSpacer(),
            postalCodeWidget(context),
            const HeightSpacer(),
            addressWidget(),
            const HeightSpacer(),
            addressDetailWidget(),
          ],
        ),
        EvButton(
          text: "확인",
          onPressed: () {
            if (!validate()) return;

            widget.onSubmit(
              address: address,
              addressDetail: addressDetail,
              phoneNumber: phoneNumber,
              postalCode: postalCode,
            );
          },
        )
      ],
    );
  }

  bool validate() {
    if (phoneNumber.isEmpty) {
      baseAlertDialog(context, "휴대전화번호를 확인하세요.");
      return false;
    }

    if (postalCode.isEmpty || address.isEmpty) {
      baseAlertDialog(context, "주소를 확인하세요.");
      return false;
    }

    if (addressDetail.isEmpty) {
      baseAlertDialog(context, "세부 주소를 입력하세요.");
      return false;
    }

    return true;
  }

  LabeldRow addressDetailWidget() {
    return LabeldRow(
      text: "",
      children: [
        Expanded(
          child: RoundTextInput(
            controller: _address2,
            maxWidth: 999,
            focusNode: _address2FocusNode,
          ),
        ),
      ],
    );
  }

  LabeldRow addressWidget() {
    return LabeldRow(
      text: "",
      children: [
        Expanded(
          child: RoundTextInput(
            controller: _address1,
            maxWidth: 999,
            maxLines: 2,
            readOnly: true,
          ),
        ),
      ],
    );
  }

  IntrinsicHeight postalCodeWidget(BuildContext context) {
    return IntrinsicHeight(
      child: LabeldRow(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        text: "주소",
        children: [
          RoundNumInput(
            controller: _postal1,
            maxLength: 3,
            maxWidth: 120,
            readOnly: true,
          ),
          const Dash(),
          RoundNumInput(
            controller: _postal2,
            maxLength: 3,
            maxWidth: 120,
            readOnly: true,
          ),
          const WidthSpacer(),
          ElevatedButton(
            onPressed: () async {
              KopoModel? model = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RemediKopo(),
                ),
              );

              if (model == null) return;
              setState(() {
                _postal1.text = Strings.substring(model.zonecode, 0, 3);
                _postal2.text = Strings.substring(model.zonecode, 3, 6);
                _address1.text = model.address ?? "";
                FocusScope.of(context).requestFocus(_address2FocusNode);
              });

              /// model 처리
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              minimumSize: const Size(120, 0),
            ),
            child: const BaseText(
              "조회",
              color: Colors.white,
              fontSize: 20,
            ),
          )
        ],
      ),
    );
  }

  LabeldRow phoneNumWidget(BuildContext context) {
    return LabeldRow(
      text: "휴대전화번호",
      children: [
        RoundNumInput(
          controller: _phoneNum1,
          maxLength: 3,
          maxWidth: 120,
        ),
        const Dash(),
        RoundNumInput(
          controller: _phoneNum2,
          maxLength: 4,
          maxWidth: 140,
          focusNode: _phoneNum2FocusNode,
          onChanged: (value) {
            if (value.length == 4) {
              FocusScope.of(context).requestFocus(_phoneNum3FocusNode);
            }
          },
        ),
        const Dash(),
        RoundNumInput(
          controller: _phoneNum3,
          maxLength: 4,
          maxWidth: 140,
          focusNode: _phoneNum3FocusNode,
          onChanged: (value) {
            if (value.length == 4) {
              _phoneNum3FocusNode.unfocus();
            }
          },
        ),
      ],
    );
  }
}
