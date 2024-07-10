import 'package:click_recept/widgets/spacer.dart';
import 'package:click_recept/widgets/texts/lg_text.dart';
import 'package:flutter/material.dart';

class CustomKeypad extends StatelessWidget {
  final bool nextDisabled;
  final Function({
    required String value,
    required InputStyle inputStyle,
  }) onChange;

  const CustomKeypad(
      {super.key, required this.onChange, this.nextDisabled = false});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        height: 100,
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        _buildKey('1'),
                        const WidthSpacer(),
                        _buildKey('2'),
                        const WidthSpacer(),
                        _buildKey('3'),
                      ]),
                ),
                const HeightSpacer(),
                Expanded(
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        _buildKey('4'),
                        const WidthSpacer(),
                        _buildKey('5'),
                        const WidthSpacer(),
                        _buildKey('6'),
                      ]),
                ),
                const HeightSpacer(),
                Expanded(
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        _buildKey('7'),
                        const WidthSpacer(),
                        _buildKey('8'),
                        const WidthSpacer(),
                        _buildKey('9'),
                      ]),
                ),
                const HeightSpacer(),
                Expanded(
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        _buildKey('del', inputStyle: InputStyle.delete),
                        const WidthSpacer(),
                        _buildKey('0'),
                        const WidthSpacer(),
                        _buildKey('초기화', inputStyle: InputStyle.clear),
                      ]),
                ),
                const HeightSpacer(),
                _buildKey("다음",
                    inputStyle: InputStyle.next, isDiabled: nextDisabled)
              ],
            ),            
          ],
        ));
  }

  Widget _buildKey(String value,
      {InputStyle inputStyle = InputStyle.normal, bool isDiabled = false}) {
    return Expanded(
      child: SizedBox(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: switch (inputStyle) {
              InputStyle.clear => Colors.blueGrey,
              InputStyle.next => Colors.blueAccent,
              _ => Colors.white
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            shadowColor: Colors.green,
          ),
          onPressed: isDiabled
              ? null
              : () => onChange(value: value, inputStyle: inputStyle),
          child: inputStyle == InputStyle.delete
              ? const Icon(Icons.backspace, color: Colors.black)
              : LgText(
                  value,
                  color: switch (inputStyle) {
                    InputStyle.normal || InputStyle.delete => Colors.black,
                    _ => Colors.white,
                  },
                ),
        ),
      ),
    );
  }
}

enum InputStyle {
  normal,
  clear,
  next,
  delete,
}
