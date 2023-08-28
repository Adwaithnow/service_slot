import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:service_slot/models/home_menu_item_type.dart';
import 'package:service_slot/routes/auto_router.gr.dart';
import 'package:service_slot/widgets/common/custom_app_bar.dart';
// import 'package:service_slot/screens/appointment_booking_screen.dart';

@RoutePage(name: "BookingHistoryScreen")
class BookingHistoryScreen extends StatelessWidget {
  const BookingHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "History",
        actions: [
          IconButton(
            onPressed: () {
              context.router.push(
                AppointmentBookingScreen(),
              );
            },
            icon: const Icon(
              CupertinoIcons.add_circled,
            ),
          )
        ],
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        itemCount: 10,
        separatorBuilder: (context, index) => const SizedBox(
          height: 10,
        ),
        itemBuilder: (context, index) {
          return Container(
            width: double.maxFinite,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              gradient: const LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color(0xffe9eeff),
                  Color(0xfffaf8ff),
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        HomeScreenItems.menuItems[1].icon,
                        width: 30,
                        height: 30,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text("Intercom"),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BookingStatistics(
                          label: "Booked date",
                          icon: CupertinoIcons.calendar,
                          text: "June 6, 2022",
                        ),
                        BookingStatistics(
                          label: "Booking no",
                          icon: CupertinoIcons.number,
                          text: "ABCD 12335",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class BookingStatistics extends StatelessWidget {
  const BookingStatistics({
    super.key,
    required this.label,
    required this.icon,
    required this.text,
  });
  final String label, text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        Row(
          children: [
            Icon(
              icon,
              size: 20,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(text),
          ],
        )
      ],
    );
  }
}
