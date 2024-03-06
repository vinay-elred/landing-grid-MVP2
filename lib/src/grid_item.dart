import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:landing_grid/src/widgets/dp_widget.dart';
import 'package:landing_grid/src/widgets/name_details.dart';
import 'package:landing_grid/src/widgets/user_tags.dart';

class GridItem extends StatelessWidget {
  const GridItem({
    super.key,
    required this.itemHeight,
    required this.itemWidth,
  });
  final int itemHeight;
  final int itemWidth;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: SizedBox(
        height: itemHeight.toDouble(),
        width: itemWidth.toDouble(),
        child: Stack(
          children: [
            Positioned.fill(
              child: CachedNetworkImage(
                imageUrl:
                    "https://images.pexels.com/photos/268533/pexels-photo-268533.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.black45,
            ),
            Center(
              child: Column(
                children: const [
                  SizedBox(height: 7.6),
                  DpWidget(),
                  SizedBox(height: 14),
                  NameDetails(),
                  SizedBox(height: 13),
                  UserTags(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
