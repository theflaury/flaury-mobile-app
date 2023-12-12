import 'package:flaury/app/widgets/navbar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/bookings_controller.dart';

class BookingsView extends GetView<BookingsController> {
   BookingsView({Key? key}) : super(key: key);
    final RxInt currentIndex = 1.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BookingsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'BookingsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
      bottomNavigationBar: BottomNavigationBarWidget(
        onItemTapped: (index) {
          currentIndex.value = index;
          handleNavigation(index);
        },
        currentIndex: currentIndex.value,
      ),
    );
  }
}
