import 'package:axis_alignment/grievances_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

 class SimpleListItem extends StatelessWidget {
  const SimpleListItem({super.key, required this.itemResponse});
   final Grievance? itemResponse;

    // const VillageListItem({super.key, required this.details});
    //  final VillagDetails? details;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Text("complaint id:  ${itemResponse?.id ?? 0}"),
        Text("complaint id:  ${itemResponse?.mobileno ?? 0}"),
      ]),
    );
  }
}