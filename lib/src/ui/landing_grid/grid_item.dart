import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:landing_grid/src/model/card_data_model.dart';
import 'package:landing_grid/src/ui/landing_grid/widgets/dp_widget.dart';
import 'package:landing_grid/src/ui/landing_grid/widgets/name_details.dart';
import 'package:landing_grid/src/ui/landing_grid/widgets/user_tags.dart';

class GridItem extends StatelessWidget {
  const GridItem({
    super.key,
    required this.itemHeight,
    required this.itemWidth,
    required this.data,
  });
  final int itemHeight;
  final int itemWidth;
  final CardDataModel data;

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
                imageUrl: data.backgroundUrl,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.black45,
              padding: const EdgeInsets.symmetric(horizontal: 18),
            ),
            Center(
              child: Column(
                children: [
                  const SizedBox(height: 7.6),
                  DpWidget(dpUrl: data.dpUrl),
                  const SizedBox(height: 14),
                  NameDetails(data: data),
                  const SizedBox(height: 13),
                  UserTags(data: data),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
