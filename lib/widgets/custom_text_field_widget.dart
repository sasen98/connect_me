import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFieldWidget extends StatefulWidget {
  const CustomTextFieldWidget({
    super.key,
    this.validator,
    this.keyboardType,
    this.controller,
    this.isPassword,
    this.hintText,
  });

  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool? isPassword;
  final String? hintText;

  @override
  State<CustomTextFieldWidget> createState() => _CustomTextFieldWidgetState();
}

class _CustomTextFieldWidgetState extends State<CustomTextFieldWidget> {
  final ValueNotifier<bool> _showPass = ValueNotifier<bool>(false);

  @override
  void initState() {
    if (widget.isPassword != null) {
      _showPass.value = widget.isPassword!;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: _showPass,
      builder: (_, value, __) {
        return TextFormField(
          controller: widget.controller,
          obscureText: _showPass.value,
          keyboardType: widget.keyboardType ?? TextInputType.text,
          validator: widget.validator,
          decoration: InputDecoration(
            hintText: widget.hintText,
            suffixIcon: !(widget.isPassword ?? false)
                ? null
                : InkWell(
                    onTap: () {
                      _showPass.value = !_showPass.value;
                    },
                    child:
                        Icon(value ? Icons.visibility : Icons.visibility_off),
                  ),
            focusColor: Colors.black,
            disabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.black,
              ),
              borderRadius: BorderRadius.circular(5.r),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.black,
              ),
              borderRadius: BorderRadius.circular(5.r),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.black,
              ),
              borderRadius: BorderRadius.circular(5.r),
            ),
            border: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.black,
              ),
              borderRadius: BorderRadius.circular(5.r),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.black,
              ),
              borderRadius: BorderRadius.circular(5.r),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.black,
              ),
              borderRadius: BorderRadius.circular(5.r),
            ),
          ),
        );
      },
    );
  }
}
