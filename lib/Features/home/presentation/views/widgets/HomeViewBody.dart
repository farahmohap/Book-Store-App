import 'package:bookly/Core/utils/assets.dart';
import 'package:bookly/Core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'CustomAppBar.dart';
import 'FeaturedBooksListView.dart';
import 'FeaturedListViewItem.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
    
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),SizedBox(height: 50,)
         , Text(
            "Best Seller",
            style: Styles.titleMedium,
          ),BestSellerListViewItem()
        ],
      ),
    );
  }
}


class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Row(
        children: [
         AspectRatio(//instead of media query
        aspectRatio: 2.5/*w*//4/*h*/,          //-> with/height
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
              image:const DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AssetsData.Test))),
        ),
      ),
          Column(children: [],)],),
    );
  }
}