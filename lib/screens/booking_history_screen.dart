import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:service_slot/routes/auto_router.gr.dart';
import 'package:service_slot/widgets/home/common/custom_app_bar.dart';
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
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [],
      ),
    );
  }
}
