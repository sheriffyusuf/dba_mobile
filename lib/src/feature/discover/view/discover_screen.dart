import 'package:auto_route/annotations.dart';
import 'package:dba_mobile/src/feature/discover/provider/discover_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

@RoutePage()
class DiscoverScreen extends GetView<DiscoverController> {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          child: Center(
            child: Text('Discover'),
          )),
    ));
  }
}
