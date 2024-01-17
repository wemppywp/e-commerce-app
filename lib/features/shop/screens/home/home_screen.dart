import 'package:flutter/material.dart';
import 'package:w_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:w_store/features/shop/screens/home/widgets/home_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// header
            WPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// Appbar
                  WHomeAppBar(),

                  /// Search Bar


                  /// Categories
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}




