import 'package:flutter/material.dart';
import 'package:ifood/core/theme/app_colors.dart';
import 'package:ifood/core/theme/app_typography.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

import 'components/header_local_component.dart';

class ContentPage extends StatefulWidget {
  @override
  _ContentPageState createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HeaderLocationComponent(
            location: 'Rua das Flores do Campo, 10',
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 160),
            child: TabBar(
                labelPadding: EdgeInsets.zero,
                indicatorPadding: EdgeInsets.zero,
                labelColor: AppColors.black,
                unselectedLabelColor: AppColors.black54,
                labelStyle: AppTypography.bodyText(context)!
                    .copyWith(color: Colors.black),
                indicator: MaterialIndicator(
                  color: AppColors.primaryColor,
                  height: 2,
                  bottomLeftRadius: 5,
                  bottomRightRadius: 5,
                ),
                controller: tabController,
                tabs: [
                  Tab(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Restaurantes', style: TextStyle(fontSize: 14),),
                    ),
                  ),
                  Tab(
                    child: Text('Mercados', style: TextStyle(fontSize: 14),),
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}