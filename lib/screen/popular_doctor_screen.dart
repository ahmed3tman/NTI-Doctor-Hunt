import 'package:doctor_hunt/core/assets.dart';
import 'package:doctor_hunt/core/models/list_view_2.dart';
import 'package:doctor_hunt/core/models/title_row.dart';
import 'package:doctor_hunt/core/models/top_bar_model.dart';
import 'package:flutter/material.dart';

class PopularDoctorScreen extends StatelessWidget {
  const PopularDoctorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(color: Colors.white),
        Positioned.fill(
          child: Image.asset(myImages.background, fit: BoxFit.cover),
        ),
        CustomScrollView(
          slivers: <Widget>[
            SliverPersistentHeader(
              pinned: true,
              delegate: _TitleBarDelegate(
                child: Container(
                  height: 100,
                  margin: EdgeInsets.only(top: 50),
                  child: TopBarModel(
                    widgett: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.search, size: 30),
                    ),
                  ),
                ),
              ),
            ),

            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  TitleRow(
                    title: 'Popular Doctor',
                    Widgett: SizedBox(height: 0),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: ListView2(),
                  ),
                  SizedBox(height: 20),

                  TitleRow(title: 'Category', Widgett: Container()),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: ListView2(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _TitleBarDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;
  _TitleBarDelegate({required this.child});

  @override
  double get minExtent => 110;
  @override
  double get maxExtent => 110;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Material(color: Colors.transparent, child: child);
  }

  @override
  bool shouldRebuild(covariant _TitleBarDelegate oldDelegate) {
    return false;
  }
}
