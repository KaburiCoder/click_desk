import 'package:click_desk/widgets/close_button_widget.dart';
import 'package:click_desk/widgets/spacer.dart';
import 'package:click_desk/widgets/texts/base_text.dart';
import 'package:flutter/material.dart';

Future<dynamic> showConsentDocDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return const ConsentDocDialog();
    },
  );
}

class ConsentDocDialog extends StatelessWidget {
  const ConsentDocDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Dialog(
      child: Stack(
        children: [
          const CloseButtonWidget(right: 8, top: 8, size: 32),
          Container(
            constraints: BoxConstraints(
                minHeight: size.height * 0.8, maxWidth: size.width * 0.8),
            padding:
                const EdgeInsets.symmetric(horizontal: 64.0, vertical: 32.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                BaseText(
                  "개인정보(민감정보)의 수집 ·이용 ·제공 동의서",
                  color: Colors.indigo[700],
                  fontSize: 26,
                  bold: true,
                ),
                const HeightSpacer(20),
                Expanded(
                  child: Scrollbar(
                    thumbVisibility: true,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const BaseText(
                              "본원은 개인정보보호법에 의거하여 개인정보 보호규정을 준수하며 귀하의 개인정보 보호에 최선을 다하고 있습니다.",
                              bold: true,
                            ),
                            const BaseText(
                              "귀하의 소중한 개인정보(및 민간정보)는 의료법 및 개인정보보호법의 관련규정에 의하여 진료 및 진료 지원 등",
                              bold: true,
                            ),
                            const BaseText(
                              "아래의 목적으로 수집 및 이용됩니다.",
                              bold: true,
                            ),
                            const BaseText(
                              "(단,환자의 인지능력이 없거나 의식저하상태일때 동행한 보호자 법적대리인이 서명날인 할수있습니다.)",
                              color: Colors.red,
                            ),
                            const HeightSpacer(8),
                            const BaseText(
                              "개인정보 수집 및 이용",
                              bold: true,
                              fontSize: 20,
                            ),
                            const BaseText(
                              "개인정보 수집·이용 목적",
                              padding: EdgeInsets.only(left: 10),
                              bold: true,
                              fontSize: 20,
                              color: Colors.pinkAccent,
                            ),
                            ...[
                              "- 진료 예약, 조회 및 진료를 위한 본인 확인 절차 검사수탁, 외부 검사 의뢰 기타 진료와 관련된 서비스",
                              "- 진단 및 치료를 위한 서비스(진료 의뢰에 필요한 개인정보 및 진료정보공유)",
                              "- 진료, 입원 및 검사 일정에 대한 유·선 안내, SMS발송 진료비,청구,수납,환불 등의 원무 서비스 제공",
                              "- 의료의 질 관리, 의료기관 인증평가, 병원 운영을 위한 법적, 행정적 대응 및 조치",
                              "- 민원/고충처리 등을 돕기 위한 의사소통 경로 직무능력 향상 교육에 필요한 최소한의 자료",
                              "- 가족 등에게 병의 증세, 환자 상태 설명, 병실 조회 및 면회",
                              "- 사회사업실에서는 프로그램 및 각종행사 진행 시 촬영된 환자 및 보호자 사진을 홈페이지, 소식지 등에 게제하거나",
                              "  사용할 수 있습니다",
                            ].map(
                              (data) => BaseText(
                                data,
                                padding: const EdgeInsets.only(left: 20),
                              ),
                            ),
                            const BaseText(
                              "수집하는 개인정보의 항목",
                              padding: EdgeInsets.only(left: 10),
                              bold: true,
                              fontSize: 20,
                              color: Colors.deepOrange,
                            ),
                            ...[
                              "- 제공하는 개인정보의 항목 : 성명, 주소, 연락처 제공하는 고유 식별정보의 항목 : 주민등록번호, 외국인등록번호",
                              "- 제공하는 민감정보의 항목 : 병력, 가족력, 유전정보 등 진료 서비스를 위하여 의료진이 필요하다고 판단하는 개인정보",
                              "- 영상정보처리기기 촬영 : 환자와 의료진의 안전 등을 보호, 범죄 예방하기 위해 일부 장소에 CCTV를 운영",
                            ].map(
                              (data) => BaseText(
                                data,
                                padding: const EdgeInsets.only(left: 20),
                              ),
                            ),
                            const BaseText(
                              "개인정보의 보유·이용기간",
                              padding: EdgeInsets.only(left: 10),
                              bold: true,
                              fontSize: 20,
                              color: Colors.deepOrange,
                            ),
                            ...[
                              "- 정보제공 등의 철회 또는 수집 제공 목적 달성 시까지 진료 서비스 제공을 위하여 수집된 경우에는 의료법 기준에 준함",
                              "- 다만, 수집 목적 또는 제공받는 목적이 달성된 경우에도 상법 등 법령의 규정에 따라 보존할 필요성이 있는 경우에도",
                              "  개인정보를 보유할 수 있습니다.",
                              "- 보유기간의 경과, 개인정보 처리목적 달성, 개인정보가 불필요하게 되었을 경우 개인정보를 파기함.",
                            ].map(
                              (data) => BaseText(
                                data,
                                padding: const EdgeInsets.only(left: 20),
                              ),
                            ),
                            const BaseText(
                              "개인정보의 보유·이용기간",
                              padding: EdgeInsets.only(left: 10),
                              bold: true,
                              fontSize: 20,
                              color: Colors.blue,
                            ),
                            ...[
                              "- 본원은 귀하의 동의가 있거나 관련 법력의 규정에 의한 경우를 제외하고는 어떠한 경우에도(개인정보·이용목적)에서",
                              "  고지한 범위를 넘어 귀하의 개인정보를 이용하거나 제3자에게 제공하지 않습니다. 다만 아래의 경우 예외",
                              "- 정보주체와의 계약체결 및 이행을 위해 불가피 한 경우",
                              "  정보주체나 법정 대리인의 의사표시를 할 수 없는 상태에 있거나 주소불명 등으로 사전 동의를 받을 수 없는 경우로써",
                              "  정보주체의 이익에 부합하는 경우",
                              "- 의료법, 국민건강보험법 등 타 법령의 규정에 의거하거나, 수사 목적으로 법령에 정해진 절차와 방법에 따라 수사기관의",
                              "  요구가 있는 경우",
                              "- 통계작성 및 학술 연구 등의 목적을 위하여 필요한 경우로서 특정 개인을 알아 볼 수 없는 형태로 가공하여 제공하는 경우",
                              "- 응급전원 및 타의료기관 이송시  진료기록 사본 및 소견서, 투약처방전등을 송부 할 수 있다.",
                            ].map(
                              (data) => BaseText(
                                data,
                                padding: const EdgeInsets.only(left: 20),
                              ),
                            ),
                            const HeightSpacer(16),
                            const BaseText(
                                "개인정보의 주체는 개인정보보호법에 따라 개인정보의 이용 및 제공에 대해 동의 거부권을 행사 할 수 있으며, 이때에 경우에"),
                            const BaseText(
                                "따라 제공받을수 있는 서비스가 제한 지연되거나 건강보험 미적용 등의 불이익을 받게 될 수 있습니다."),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
