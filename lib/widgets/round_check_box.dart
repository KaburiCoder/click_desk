import 'package:click_desk/widgets/spacer.dart';
import 'package:flutter/material.dart';

class RoundCheckBox extends StatefulWidget {
  final Widget? text;
  final bool checked;
  final double checkSize;
  final double gap;
  final Function(bool checked) onCheckChanged;
  const RoundCheckBox(
      {super.key,
      this.text,
      required this.checked,
      required this.onCheckChanged,
      this.checkSize = 32,
      this.gap = 12});

  @override
  State<RoundCheckBox> createState() => _RoundCheckBoxState();
}

class _RoundCheckBoxState extends State<RoundCheckBox> {
  bool _isChecked = false;

  @override
  void initState() {
    super.initState();
    setState(() {
      _isChecked = widget.checked;
    });
  }

  @override
  void didUpdateWidget(covariant RoundCheckBox oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.checked != widget.checked) {
      setState(() {
        _isChecked = widget.checked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isChecked = !_isChecked;
          widget.onCheckChanged(_isChecked);
        });
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              decoration: BoxDecoration(
                color: _isChecked ? Colors.blue : Colors.grey[300],
                shape: BoxShape.circle,
              ),
              width: widget.checkSize,
              height: widget.checkSize,
              child: Icon(
                Icons.check,
                size: widget.checkSize - 4,
                color: Colors.white,
              )),
          WidthSpacer(widget.gap),
          if (widget.text != null) widget.text!,
        ],
      ),
    );
  }
}
