import 'package:flutter/material.dart';
import 'package:loyaute/presentation/core/constants/styles.dart';
import 'package:loyaute/presentation/core/styles/app_colors.dart';
import 'package:loyaute/presentation/shared/shapes/curved_top_clipper.dart';

class PageArcTop extends StatelessWidget {
  final Widget child;
  final bool? resizeToAvoidBottomInset;
  final List<Widget>? persistentFooterButtons;
  const PageArcTop(
      {super.key,
      required this.child,
      this.resizeToAvoidBottomInset,
      this.persistentFooterButtons});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      body: Stack(
        children: [
          ClipPath(
            clipper: CurvedTopClipper(),
            child: Container(
              height: screenHeight / 5.2,
              color: AppColors.primary,
            ),
          ),
          child
        ],
      ),
      persistentFooterButtons: persistentFooterButtons,
    );
  }
}
