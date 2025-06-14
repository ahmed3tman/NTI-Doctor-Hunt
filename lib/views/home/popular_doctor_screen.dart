import 'package:doctor_hunt/core/theme/images.dart';
import 'package:doctor_hunt/models/popular_vertical_list.dart';
import 'package:doctor_hunt/models/top_bar_model.dart';
import 'package:flutter/material.dart';


class PopularDoctorScreen extends StatelessWidget {
  const PopularDoctorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
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
                        onPressed: () {},
                        icon: Icon(Icons.search, size: 30),
                      ),
                    ),
                  ),
                ),
              ),

              PopularVerticalList(),
            ],
          ),
        ],
      ),
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
