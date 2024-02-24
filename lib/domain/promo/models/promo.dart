import 'package:loyaute/domain/merchant/models/merchant.dart';

class Promo {
  final String? image;
  final Merchant? merchant;
  final String? title;
  final int? totalPoints;

  Promo({this.image, this.merchant, this.title, this.totalPoints});
}
