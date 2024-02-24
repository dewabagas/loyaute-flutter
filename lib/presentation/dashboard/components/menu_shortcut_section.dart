import 'package:flutter/widgets.dart';
import 'package:loyaute/presentation/core/constants/assets.dart';
import 'package:loyaute/presentation/shared/buttons/button_menu.dart';

class MenuShortcutSection extends StatelessWidget {
  const MenuShortcutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ButtonMenu(
          icon: AppIcons.icVoucher,
          title: 'Voucher',
          onTap: () {},
        ),
        ButtonMenu(
          icon: AppIcons.icQris,
          title: 'QRIS',
          onTap: () {},
        ),
        ButtonMenu(
          icon: AppIcons.icScan,
          title: 'Scan',
          onTap: () {},
        ),
        ButtonMenu(
          icon: AppIcons.icMission,
          title: 'Mission',
          onTap: () {},
        ),
      ],
    );
  }
}
