import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:landing_grid/src/ui/landing_grid/grid_item.dart';
import 'package:landing_grid/src/webservice/card_data_webservice.dart';

class GridBuilder extends StatefulWidget {
  const GridBuilder({super.key});

  @override
  State<GridBuilder> createState() => _GridBuilderState();
}

class _GridBuilderState extends State<GridBuilder> {
  final List<int> indexs = [];
  final crossAxisSpace = 6.0;
  final int originalItemWidth = 116;
  late int itemWidth;
  final itemHeight = 185;
  late int crossCount;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    itemWidth = originalItemWidth + crossAxisSpace.toInt();
    final screenWidth = MediaQuery.of(context).size.width;
    crossCount = screenWidth ~/ itemWidth;
    buildIndexs();
    super.didChangeDependencies();
  }

  void buildIndexs() {
    indexs.clear();
    if (crossCount.isEven) {
      for (int i = 1; i <= crossCount; i += 2) {
        indexs.add(i);
      }
    } else {
      for (int i = 1; i < crossCount; i += 2) {
        indexs.add(i);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth <= 0) return const CircularProgressIndicator();

    final gutterSpace = (crossAxisSpace * (crossCount - 1));
    final cardWidths = crossCount * originalItemWidth;
    final width = cardWidths.toDouble() + gutterSpace + 16;

    return Center(
      child: SizedBox(
        width: width,
        child: FutureBuilder(
          future: CardDataWebService().fetchData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            }

            final dataList = snapshot.data;
            if (dataList == null || snapshot.hasError) {
              return const Text("No data error");
            }

            return MasonryGridView.builder(
              padding: const EdgeInsets.all(8.0),
              crossAxisSpacing: crossAxisSpace,
              mainAxisSpacing: crossAxisSpace,
              gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossCount,
              ),
              itemCount: dataList.length,
              itemBuilder: (BuildContext context, int index) {
                return indexs.contains(index)
                    ? const SizedBox(
                        height: 30,
                      )
                    : GridItem(
                        data: dataList[index],
                        itemHeight: itemHeight,
                        itemWidth: itemWidth,
                      );
              },
            );
          },
        ),
      ),
    );
  }
}
