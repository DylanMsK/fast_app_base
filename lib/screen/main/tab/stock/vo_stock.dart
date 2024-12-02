import 'package:fast_app_base/screen/main/tab/stock/tab/stock_percentage_data_provider.dart';
import 'package:fast_app_base/screen/main/tab/stock/vo_popular_stock.dart';

class Stock extends PopularStock {
  final String stockImagePath;

  Stock({
    required super.yesterdayClosePrice,
    required super.currentPrice,
    required super.name,
    required this.stockImagePath,
  });
}
