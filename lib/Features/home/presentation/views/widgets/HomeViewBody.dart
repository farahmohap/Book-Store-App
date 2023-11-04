import 'package:bookly/Core/utils/assets.dart';
import 'package:bookly/Core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'BestSellerListView.dart';
import 'BestSellerListViewItem.dart';
import 'CustomAppBar.dart';
import 'FeaturedBooksListView.dart';
import 'CustomBookImage.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                child: CustomAppBar(),
              ),
              FeaturedBooksListView(),
             
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  "Best Seller",
                  style: Styles.textStyle18,
                ),
              ),
              SizedBox(height: 20),
              
            ],
          ),
        ),SliverFillRemaining(//without shtrikrap true
                child: BestSellerListView(),
              )
      ],
    );
  }
}



/*Expanded(
      //bcz its inside column
      child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: 10,
          itemBuilder: ((context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: BestSellerListViewItem(),
            );
          })),
    ); */