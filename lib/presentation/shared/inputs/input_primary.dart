import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loyaute/presentation/core/constants/styles.dart';
import 'package:loyaute/presentation/core/styles/app_colors.dart';

class InputPrimary extends StatefulWidget {
  final String label;
  final String? initialValue;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;
  final Function(String?)? onSaved;
  final Function(String?)? onChanged;
  final Function(bool)? onFocusChange;
  final Function()? onClear;
  final bool? isDense;
  final bool isValidated;
  final bool isFocused;
  final bool isEnabled;
  final bool obscureText;
  final EdgeInsetsGeometry? contentPadding;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final TextStyle? textStyles;
  final int? maxLength;
  const InputPrimary(
      {Key? key,
      this.validator,
      this.label = '',
      this.initialValue,
      this.hintText,
      this.prefixIcon,
      this.suffixIcon,
      this.keyboardType,
      this.inputFormatters,
      this.isDense,
      this.contentPadding,
      this.onSaved,
      this.onChanged,
      this.focusNode,
      this.onFocusChange,
      this.isFocused = false,
      this.isValidated = false,
      this.isEnabled = true,
      this.obscureText = false,
      this.onClear,
      this.textStyles,
      this.controller,
      this.maxLength})
      : super(key: key);

  @override
  State<InputPrimary> createState() => _InputPrimaryState();
}

class _InputPrimaryState extends State<InputPrimary> {
  @override
  Widget build(BuildContext context) {
    return Focus(
      onFocusChange: widget.onFocusChange,
      child: TextFormField(
        maxLength: widget.maxLength,
        controller: widget.controller,
        initialValue: widget.initialValue,
        textAlign: TextAlign.left,
        enabled: widget.isEnabled,
        focusNode: widget.focusNode,
        obscureText: widget.obscureText,
        decoration: InputDecoration(
            hintText: widget.hintText,
            labelText: widget.label,
            counter: const SizedBox.shrink(),
            labelStyle:
                TextStyles.titleMedium.copyWith(color: AppColors.darkGrey),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.darkGrey, width: 2.0),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.darkGrey, width: 2.0),
            ),
            errorBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.lightGrey, width: 2.0),
            ),
            focusedErrorBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.red, width: 2.0),
            ),
            disabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.darkGrey, width: 2.0),
            ),
            contentPadding: widget.contentPadding ?? EdgeInsets.zero,
            isDense: widget.isDense,
            prefixIcon: widget.prefixIcon,
            suffixIcon: widget.suffixIcon ?? suffixIcons()),
        style: widget.textStyles ??
            TextStyles.titleMedium.copyWith(
                color: widget.isEnabled
                    ? AppColors.darkGrey
                    : AppColors.lightGrey),
        keyboardType: widget.keyboardType,
        inputFormatters: widget.inputFormatters,
        validator: widget.validator,
        onSaved: widget.onSaved,
        onChanged: widget.onChanged,
      ),
    );
  }

  Widget suffixIcons() {
    if (widget.isFocused) {
      return Visibility(
        visible: widget.controller?.text.isNotEmpty == true,
        child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.038889,
            ),
            child: IconButton(
                onPressed: widget.onClear,
                icon: const Icon(
                  Icons.close_rounded,
                  color: AppColors.darkGrey,
                ))),
      );
    } else if (widget.isValidated) {
      return Container(
          margin: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.038889,
          ),
          child: const Icon(
            Icons.check_circle,
            color: AppColors.green,
          ));
    } else {
      return const SizedBox.shrink();
    }
  }
}
