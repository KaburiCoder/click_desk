import 'package:click_desk/widgets/texts/base_text.dart';
import 'package:flutter/material.dart';

class ToggleButton extends StatefulWidget {
  final String text;
  final bool value;
  final Function(bool value) onChanged;
  final EdgeInsetsGeometry padding;
  final BoxConstraints? constraints;
  const ToggleButton({
    super.key,
    required this.value,
    required this.text,
    required this.onChanged,
    this.padding = const EdgeInsets.all(8),
    this.constraints,
  });

  @override
  State<ToggleButton> createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  late bool checked = false;

  @override
  void initState() {
    super.initState();
    setState(() {
      checked = widget.value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          checked = !checked;
          widget.onChanged(checked);
        });
      },
      child: Container(
        padding: widget.padding,
        constraints: widget.constraints,
        decoration: BoxDecoration(
          color: checked ? Colors.white : Colors.grey[50],
          border: Border.all(
              color: checked ? Colors.blue : Colors.grey.withOpacity(0.25),
              width: checked ? 3 : 1),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(
          child: BaseText(
            widget.text,
            color: checked ? Colors.blue : Colors.black,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
