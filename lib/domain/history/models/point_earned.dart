import 'package:loyaute/domain/merchant/models/merchant.dart';

class PointEarned {
  final String? image;
  final Merchant? merchant;
  final String? dateTime;
  final int? totalPoints;

  PointEarned({this.image, this.merchant, this.dateTime, this.totalPoints});
}
