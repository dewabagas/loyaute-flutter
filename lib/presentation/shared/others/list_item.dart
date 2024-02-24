import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loyaute/presentation/core/constants/styles.dart';

enum ListType { unordered, ordered }

class ListItem extends StatelessWidget {
  final String title;
  final String body;
  final int? index;
  final ListType listType;

  const ListItem({
    Key? key,
    required this.title,
    required this.body,
    this.index,
    this.listType = ListType.unordered,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bullet =
        listType == ListType.unordered ? '\u2022' : '${index ?? ''}.';
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(bullet, style: TextStyles.bodyMedium),
        SizedBox(width: 10.w),
        Expanded(
          child: SizedBox(
            width: 311.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyles.bodyMedium
                      .copyWith(fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 5.h),
                Text(
                  body,
                  textAlign: TextAlign.justify,
                  style: TextStyles.bodyMedium
                      .copyWith(fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
