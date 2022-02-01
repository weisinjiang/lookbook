
import 'package:app/core/models/device_details.dart';
import 'package:flutter/material.dart';

class WebLayoutView extends StatelessWidget {

  final Widget Function(BuildContext context, BoxConstraints constraints, DeviceDetails deviceDetails) builder;

  const WebLayoutView({
    Key? key,
    required this.builder
  
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
  
}