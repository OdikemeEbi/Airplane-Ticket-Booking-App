import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/ticket_view.dart';
import 'package:ticket_booking_app/utils/app-styles.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';

import '../utils/app_info_list.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getHeight(20),
                vertical: AppLayout.getHeight(20)),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text(
                'Tickets',
                style: Styles.headLineStyle1,
              ),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: const EdgeInsets.all(3.5),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(50)),
                    color: const Color(0xFFF4F6FD)),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                          vertical: AppLayout.getHeight(7)),
                      width: size.width * .44,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(AppLayout.getHeight(50))),
                          color: Colors.white),
                      child: Center(child: Text('Airline tickets')),
                    ),
                    FittedBox(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: AppLayout.getHeight(7)),
                        width: size.width * .44,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.horizontal(
                                right:
                                    Radius.circular(AppLayout.getHeight(50))),
                            color: Colors.transparent),
                        child: Center(child: Text('Hotels')),
                      ),
                    )
                  ],
                ),
              ),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(ticket: ticketList[0]),
              )
            ],
          )
        ],
      ),
    );
  }
}
