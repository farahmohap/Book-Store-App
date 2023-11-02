import 'package:flutter/material.dart';

import '../../../../../Core/utils/assets.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7/4,//-> with/height
      child: Container(
        // height:MediaQuery.of(context).size.height*.25 ,
        // width:MediaQuery.of(context).size.width*.25 ,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
            image:const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AssetsData.Test))),
      ),
    );
  }
}
