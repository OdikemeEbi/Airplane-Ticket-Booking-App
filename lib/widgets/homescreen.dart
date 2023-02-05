import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/hotel_screen.dart';
import 'package:ticket_booking_app/ticket_view.dart';
import 'package:ticket_booking_app/utils/app-styles.dart';
import 'package:ticket_booking_app/utils/app_info_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            child: Column(
              children: [
                const Gap(40),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Good Morning',
                                style: Styles.headLineStyle3,
                              ),
                              Gap(5),
                              Text(
                                'Book Tickets',
                                style: Styles.headLineStyle1,
                              ),
                            ],
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/img001.jpg'),
                                    fit: BoxFit.cover)),
                          )
                        ],
                      ),
                      const Gap(25),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFF4F6FD)),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 12),
                        child: Row(
                          children: const [
                            Icon(
                              FluentSystemIcons.ic_fluent_search_regular,
                              color: Color(0xFFBFC205),
                            ),
                            Text('Search')
                          ],
                        ),
                      ),
                      const Gap(40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Upcoming Flights',
                            style: Styles.headLineStyle2,
                          ),
                          InkWell(
                            onTap: (() {
                              print('you have tapped');
                            }),
                            child: Text(
                              'View all',
                              style: Styles.textStyle
                                  .copyWith(color: Styles.primaryColor),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const Gap(15),
                SingleChildScrollView(
                    padding: EdgeInsets.only(right: 20),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: ticketList
                            .map((singleTicket) =>
                                TicketView(ticket: singleTicket))
                            .toList())),
                // const Gap(15),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Hotels',
                        style: Styles.headLineStyle2,
                      ),
                      InkWell(
                        onTap: (() {
                          print('you have tapped');
                        }),
                        child: Text(
                          'View all',
                          style: Styles.textStyle
                              .copyWith(color: Styles.primaryColor),
                        ),
                      )
                    ],
                  ),
                ),
                const Gap(15),
                SingleChildScrollView(
                    padding: EdgeInsets.only(right: 20),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: hotelList
                          .map((hotel) => HotelScreen(hotel: hotel))
                          .toList(),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
