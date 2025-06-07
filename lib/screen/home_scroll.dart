import 'package:doctor_hunt/core/assets.dart';
import 'package:doctor_hunt/core/colors.dart';
import 'package:doctor_hunt/core/models/list_icons.dart';
import 'package:doctor_hunt/core/models/list_view_1.dart';
import 'package:doctor_hunt/core/models/list_view_2.dart';
import 'package:doctor_hunt/core/models/list_view_3.dart';
import 'package:doctor_hunt/core/models/search_bar_model.dart';
import 'package:doctor_hunt/core/text_style.dart';
import 'package:flutter/material.dart';

class HomeScroll extends StatelessWidget {
  const HomeScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(myImages.background, fit: BoxFit.cover),
        ),
        CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                width: double.infinity,
                height: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),

                  color: MyColors.primaryGreen,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 51),
                          Text(
                            'Hi Handwerker! ',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            'Find Your Doctor',
                            style: myTextStyle(23, Colors.white),
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: SizedBox(
                          height: 70,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              myImages.doc4,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //=======================================================================
            SliverPersistentHeader(
              pinned: true,
              delegate: _SearchBarDelegate(
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 82,
                      decoration: BoxDecoration(
                        color: MyColors.primaryGreen,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 49,
                        left: 15,
                        right: 15,
                      ),
                      child: SearchBarModel(),
                    ),
                  ],
                ),
              ),
            ),

            //=======================================================================
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      'Live Doctors',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  ListView1(),
                  SizedBox(height: 40),
                  ListIcons(),
                  SizedBox(height: 20),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        Text(
                          'Popular Doctor',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                        Spacer(),
                        Text(
                          'See all',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: MyColors.Grey,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 12,
                          color: MyColors.Grey,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),

                  ListView2(),
                  SizedBox(height: 20),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        Text(
                          'Feature Doctor',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                        Spacer(),
                        Text(
                          'See all',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: MyColors.Grey,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 12,
                          color: MyColors.Grey,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),


                  ListView3(),
                  SizedBox(height: 500),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _SearchBarDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;
  _SearchBarDelegate({required this.child});

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
  bool shouldRebuild(covariant _SearchBarDelegate oldDelegate) {
    return false;
  }
}
