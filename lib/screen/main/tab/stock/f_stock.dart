import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

import '../../../../common/widget/w_image_button.dart';

class StockFragment extends StatefulWidget {
  const StockFragment({super.key});

  @override
  State<StockFragment> createState() => _StockFragmentState();
}

class _StockFragmentState extends State<StockFragment> {
  final tabController = TabController(length: length, vsync: vsync)
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            actions: [
              ImageButton(
                imagePath: "$basePath/icon/stock_search.png",
                onTap: () {
                  context.showSnackbar("검색");
                },
              ),
              ImageButton(
                imagePath: "$basePath/icon/stock_calendar.png",
                onTap: () {
                  context.showSnackbar("캘린더");
                },
              ),
              ImageButton(
                imagePath: "$basePath/icon/stock_settings.png",
                onTap: () {
                  context.showSnackbar("설정");
                },
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [title, tabBar, myAccount, height20, myStocks],
            ),
          )
        ],
      ),
    );
  }

  Widget get title => Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          "토스증권".text.size(24).bold.make(),
          width20,
          'S&P 500'
              .text
              .size(13)
              .bold
              .color(context.appColors.lessImportantText)
              .make(),
          width10,
          3919.29
              .toComma()
              .text
              .size(13)
              .bold
              .color(context.appColors.plus)
              .make()
        ],
      ).pOnly(left: 20);

  Widget get tabBar => Column(children: [
        TabBar(
          tabs: ["내 주식".text.make(), "오늘의 발견".text.make()],
        ),
        Line()
      ]);

  Widget get myAccount => Placeholder();

  Widget get myStocks => Placeholder();
}
