import 'dart:typed_data';

import 'package:click_desk/routes/nav.dart';
import 'package:click_desk/widgets/close_button_widget.dart';
import 'package:click_desk/widgets/spacer.dart';
import 'package:click_desk/widgets/texts/xl_text.dart';
import 'package:flutter/material.dart';
import 'package:signature/signature.dart';

import 'ev_button.dart';

Future<Uint8List?> showSignatureModal(BuildContext context) {
  return showModalBottomSheet(
    constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width),
    backgroundColor: Colors.white,
    isDismissible: false,
    isScrollControlled: true,
    context: context,
    builder: (context) {
      return const SignatureModal();
    },
  );
}

class SignatureModal extends StatefulWidget {
  const SignatureModal({super.key});

  @override
  State<SignatureModal> createState() => _SignatureModalState();
}

class _SignatureModalState extends State<SignatureModal> {
  final SignatureController _controller = SignatureController(
    penStrokeWidth: 5,
    penColor: Colors.black,
    exportBackgroundColor: Colors.white,
  );
  final double _signatureWidth = 600;
  final double _signatureHeight = 300;
  Uint8List? buffer;

  @override
  void initState() {
    super.initState();
    _controller.onDrawEnd = () async {
      buffer = await _controller.toPngBytes();
      setState(() {});
    };
  }

  @override
  void dispose() {
    _controller.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const CloseButtonWidget(size: 36, top: 4, right: 4),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 60.0, vertical: 60.0),
          child: SizedBox(
            width: _signatureWidth,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const XlHanbitText("서명해주세요.", color: Colors.blue),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            _controller.clear();
                          },
                          icon: const Icon(Icons.auto_fix_high, size: 36),
                        ),
                        const WidthSpacer(16),
                        EvButton(
                            minWidth: 150,
                            backgroundColor: Colors.blue,
                            onPressed: buffer == null
                                ? null
                                : () {
                                    Nav.of(context).pop(buffer);
                                  },
                            text: "확인"),
                      ],
                    )
                  ],
                ),
                const HeightSpacer(40),
                Container(
                  decoration:
                      const BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      color: Colors.blue,
                      blurRadius: 3,
                      blurStyle: BlurStyle.outer,
                      spreadRadius: 2,
                    )
                  ]),
                  child: Signature(
                    controller: _controller,
                    width: _signatureWidth,
                    height: _signatureHeight,
                    backgroundColor: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
