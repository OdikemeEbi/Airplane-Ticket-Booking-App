import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/reuse_widget/app_double_text.dart';
import 'package:ticket_booking_app/reuse_widget/icon_text_widget.dart';
import 'package:ticket_booking_app/utils/app-styles.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text(
            'What are\nyou Looking for?',
            style: Styles.headLineStyle1
                .copyWith(fontSize: AppLayout.getWidth(35)),
          ),
          Gap(AppLayout.getHeight(40)),
          Container(
            padding: const EdgeInsets.all(3.5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
                color: const Color(0xFFF4F6FD)),
            child: Row(
              children: [
                Container(
                  padding:
                      EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                  width: size.width * .44,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(AppLayout.getHeight(50))),
                      color: Colors.white),
                  child: Center(child: Text('Airline tickets')),
                ),
                FittedBox(
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                    width: size.width * .44,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(
                            right: Radius.circular(AppLayout.getHeight(50))),
                        color: Colors.transparent),
                    child: Center(child: Text('Hotels')),
                  ),
                )
              ],
            ),
          ),
          Gap(AppLayout.getHeight(25)),
          const AppIconText(
              icon: Icons.flight_takeoff_rounded, text: 'Departure'),
          Gap(AppLayout.getHeight(20)),
          const AppIconText(icon: Icons.flight_land_rounded, text: 'Arrival'),
          Gap(AppLayout.getHeight(25)),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidth(18),
                vertical: AppLayout.getWidth(15)),
            decoration: BoxDecoration(
                color: Color(0XD91130CE),
                borderRadius: BorderRadius.circular(AppLayout.getHeight(10))),
            child: Center(
              child: Text(
                'Find Ticket',
                style: Styles.textStyle.copyWith(color: Colors.white),
              ),
            ),
          ),
          Gap(AppLayout.getHeight(40)),
          const AppDoubleTextWidget(
              bigText: 'Upcoming Flights', smallText: 'View all'),
          Gap(AppLayout.getHeight(15)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: size.width * .42,
                height: AppLayout.getHeight(425),
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(15),
                    vertical: AppLayout.getHeight(17)),
                // margin: EdgeInsets.only(right: 0, top: 5, left: 17),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 1,
                          spreadRadius: 1,
                          color: Colors.grey.shade200)
                    ],
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(20)),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                          // color: Styles.primaryColor,
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(12)),
                          image: DecorationImage(
                              image: AssetImage('assets/images/img006.jpg'),
                              fit: BoxFit.cover)),
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Text(
                      '20% discount on the early bookng of this flight. Dont miss.',
                      style: Styles.headLineStyle2,
                    )
                  ],
                ),
              ),
              // Gap(AppLayout.getWidth(12)),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * .42,
                        height: AppLayout.getHeight(200),
                        padding: EdgeInsets.symmetric(
                            horizontal: AppLayout.getHeight(15),
                            vertical: AppLayout.getHeight(17)),
                        // margin: EdgeInsets.only(right: 0, top: 5, left: 17),
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 1,
                                  spreadRadius: 1,
                                  color: Colors.grey.shade200)
                            ],
                            borderRadius:
                                BorderRadius.circular(AppLayout.getHeight(18)),
                            color: Color(0xFF3AB8B8)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Discount\nfor Survay',
                              style: Styles.headLineStyle2
                                  .copyWith(color: Colors.white),
                            ),
                            Gap(AppLayout.getHeight(10)),
                            Text(
                              'Take the survay about our services and get discount',
                              style: Styles.headLineStyle3
                                  .copyWith(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        top: -42,
                        right: -43,
                        child: Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(30)),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: AppLayout.getHeight(18),
                                  color: Color(0XFF189999))),
                          // color: Colors.transparent,
                        ),
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(12)),
                  Container(
                    width: size.width * .42,
                    height: AppLayout.getHeight(200),
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getHeight(15),
                        vertical: AppLayout.getHeight(17)),
                    // margin: EdgeInsets.only(right: 0, top: 5, left: 17),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 1,
                              spreadRadius: 1,
                              color: Colors.grey.shade200)
                        ],
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(20)),
                        color: Color(0xFFEC6545)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '20% discount on the early bookng of this flight. Dont miss.',
                          style: Styles.headLineStyle2,
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
