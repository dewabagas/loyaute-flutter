import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
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
  final EdgeInsetsGeometry? contentPadding;
  final EdgeInsetsGeometry? labelPadding;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final TextStyle? textStyles;
  final TextStyle? hintStyles;
  final int? maxLength;
  final int? minLines;
  final int? maxLines;
  final TextCapitalization textCapitalization;
  final double width;
  final bool hasLabel;
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
      this.labelPadding,
      this.onSaved,
      this.onChanged,
      this.focusNode,
      this.onFocusChange,
      this.isFocused = false,
      this.isValidated = false,
      this.isEnabled = true,
      this.onClear,
      this.textStyles,
      this.hintStyles,
      this.controller,
      this.maxLength,
      this.minLines,
      this.maxLines,
      this.width = double.infinity,
      this.textCapitalization = TextCapitalization.none,
      this.hasLabel = true})
      : super(key: key);

  @override
  State<InputPrimary> createState() => _InputPrimaryState();
}

class _InputPrimaryState extends State<InputPrimary> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          widget.hasLabel
              ? Padding(
                  padding: widget.labelPadding ??
                      EdgeInsets.only(top: 20.h, bottom: 8.h),
                  child: Text(
                    widget.label,
                    style: TextStyles.labelMedium,
                  ),
                )
              : const SizedBox.shrink(),
          Focus(
            onFocusChange: widget.onFocusChange,
            child: TextFormField(
              textCapitalization: widget.textCapitalization,
              maxLength: widget.maxLength,
              controller: widget.controller,
              initialValue: widget.initialValue,
              textAlign: TextAlign.left,
              enabled: widget.isEnabled,
              focusNode: widget.focusNode,
              decoration: InputDecoration(
                  hintText: widget.hintText,
                  hintStyle: widget.hintStyles ??
                      TextStyles.labelLarge.copyWith(
                          fontWeight: FontWeight.w400,
                          color: AppColors.neutral),
                  fillColor: AppColors.white,
                  filled: true,
                  counter: const SizedBox.shrink(),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: AppColors.lightGrey9, width: 1.0),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: AppColors.primary, width: 1.0),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: AppColors.red, width: 1.0),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: AppColors.red, width: 1.0),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: AppColors.lightGrey9, width: 1.0),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  contentPadding: widget.contentPadding ??
                      EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
                  isDense: widget.isDense,
                  prefixIcon: widget.prefixIcon,
                  suffixIcon: suffixIcons()),
              style: widget.textStyles ??
                  TextStyles.labelLarge.copyWith(
                      color: widget.isEnabled
                          ? AppColors.neutralDark
                          : AppColors.neutral,
                      fontWeight: FontWeight.w400),
              keyboardType: widget.keyboardType,
              inputFormatters: widget.inputFormatters,
              validator: widget.validator,
              onSaved: widget.onSaved,
              onChanged: widget.onChanged,
              minLines: widget.minLines,
              maxLines: widget.maxLines,
            ),
          ),
        ],
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
