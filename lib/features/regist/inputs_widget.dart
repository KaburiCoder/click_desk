import 'package:click_desk/models/request_state/request_state.dart';
import 'package:click_desk/pages/regist/regist_page.dart';
import 'package:click_desk/shared/providers/checkin/checkin_provider.dart';
import 'package:click_desk/shared/providers/patient/patient_confirm_manager.dart';
import 'package:click_desk/shared/providers/patient/patient_confirm_provider.dart';
import 'package:click_desk/shared/utils/string_util.dart';
import 'package:click_desk/widgets/base_alert_dialog.dart';
import 'package:click_desk/widgets/labeld_row.dart';
import 'package:click_desk/widgets/round_input.dart';
import 'package:click_desk/widgets/spacer.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class InputsWidget extends ConsumerStatefulWidget {
  final Function({required String suname, required String jumin}) onNext;
  const InputsWidget({
    super.key,
    required this.onNext,
  });

  @override
  ConsumerState<InputsWidget> createState() => _InputsWidgetState();
}

class _InputsWidgetState extends ConsumerState<InputsWidget> {
  final TextEditingController _suname = TextEditingController();
  final TextEditingController _jumin1 = TextEditingController();
  final TextEditingController _jumin2 = TextEditingController();
  final FocusNode _sunameFocusNode = FocusNode();
  final FocusNode _jumin2FocusNode = FocusNode();

  get jumin => _jumin1.text + _jumin2.text;
  get suname => _suname.text.trim();

  @override
  void dispose() {
    _suname.dispose();
    _jumin1.dispose();
    _jumin2.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final checkinState = ref.read(checkinProvider);
      if (checkinState.isQRScanned) {
        // QR 코드로 정보가 넘어왔을 경우
        _suname.text = checkinState.patientState.suname;
        _jumin1.text = Strings.substring(checkinState.patientState.jumin, 0, 6);
        _jumin2.text =
            Strings.substring(checkinState.patientState.jumin, 6, 13);
      } else {
        FocusScope.of(context).requestFocus(_sunameFocusNode);
      }
    });
  }

  void _onNext() {
    widget.onNext(suname: suname, jumin: jumin);
  }

  @override
  Widget build(BuildContext context) {
    final patientConfirm = PatientConfirmManager(ref);
    final patientConfirmState = ref.watch(patientConfirmProvider);
    final checkinState = ref.watch(checkinProvider);

    patientConfirm.listenOnRegist(context, _onNext);

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const SizedBox(),
        Padding(
          padding: const EdgeInsets.only(left: 80.0),
          child: Column(
            children: [
              sunameWidget(checkinState.isQRScanned),
              const HeightSpacer(30),
              juminWidget(context, checkinState.isQRScanned),
            ],
          ),
        ),
        EvButton(
          text: "다음",
          isLoading: patientConfirmState is RequestLoadingState,
          onPressed: () {
            if (checkinState.isQRScanned) {
              _onNext();
              return;
            }

            if (!validate()) return;

            patientConfirm.read().confirm(suname: suname, jumin: jumin);
          },
        )
      ],
    );
  }

  bool validate() {
    if (suname.isEmpty) {
      baseAlertDialog(context, "이름을 입력하세요.");
      return false;
    }

    if (jumin.length < 13) {
      baseAlertDialog(context, "주민등록번호를 입력하세요.");
      return false;
    }

    return true;
  }

  LabeldRow juminWidget(BuildContext context, bool isQRScanned) {
    return LabeldRow(
      text: "주민등록번호",
      children: [
        RoundNumInput(
          fontSize: 45,
          maxWidth: 250,
          controller: _jumin1,
          maxLength: 6,
          textInputAction: TextInputAction.next,
          readOnly: isQRScanned,
          onChanged: (value) {
            if (value.length == 6) {
              FocusScope.of(context).requestFocus(_jumin2FocusNode);
            }
          },
        ),
        const Icon(Icons.horizontal_rule),
        RoundNumInput(
          fontSize: 45,
          maxWidth: 280,
          controller: _jumin2,
          maxLength: 7,
          obscureText: true,
          focusNode: _jumin2FocusNode,
          textInputAction: TextInputAction.done,
          readOnly: isQRScanned,
          onChanged: (value) {
            if (value.length == 7) {
              _jumin2FocusNode.unfocus();
            }
          },
        ),
      ],
    );
  }

  LabeldRow sunameWidget(bool isQRScanned) {
    return LabeldRow(
      text: "이름",
      children: [
        RoundTextInput(
          maxWidth: 250,
          controller: _suname,
          fontSize: 45,
          textInputAction: TextInputAction.next,
          focusNode: _sunameFocusNode,
          readOnly: isQRScanned,
        ),
      ],
    );
  }
}
