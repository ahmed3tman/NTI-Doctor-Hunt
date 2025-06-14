import 'package:doctor_hunt/core/theme/colors.dart';
import 'package:doctor_hunt/core/theme/images.dart';
import 'package:doctor_hunt/core/theme/text_style.dart';
import 'package:doctor_hunt/models/list_icons.dart';
import 'package:doctor_hunt/models/list_view_1.dart';
import 'package:doctor_hunt/models/list_view_2.dart';
import 'package:doctor_hunt/models/list_view_3.dart';
import 'package:doctor_hunt/models/title_row.dart';
import 'package:doctor_hunt/widgets/app_text_field.dart';
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
                    topLeft: Radius.circular(45),
                    topRight: Radius.circular(45),
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
                      height: 85,
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
                        top: 50,
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
                  SizedBox(height: 15),
                  TitleRow(title: 'Live Doctors', Widgett: SizedBox(height: 0)),
                  SizedBox(height: 10),
                  LiveList(),
                  SizedBox(height: 30),
                  ListIcons(),
                  SizedBox(height: 15),
                  TitleRow(
                    title: 'Popular Doctor',
                    Widgett: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'popularDoctor');
                      },
                      child: Row(
                        children: [
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
                  ),
                  SizedBox(height: 10),
                  ListView2(width: 200, hight: 300),
                  SizedBox(height: 15),
                  TitleRow(
                    title: 'Feature Doctor',
                    Widgett: Row(
                      children: [
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
                  SizedBox(height: 10),
                  ListView3(),
                  SizedBox(height: 130),
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
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Material(color: Colors.transparent, child: child);
  }

  @override
  double get minExtent => 110;

  @override
  double get maxExtent => 115;

  @override
  bool shouldRebuild(covariant _SearchBarDelegate oldDelegate) {
    return false;
  }
}
