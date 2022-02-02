import 'package:flutter/material.dart';

class DeviceDetails {
  bool isMobile = false;
  bool isTablet = false;
  bool isComputer = false;
  bool is1080 = false;
  bool is1440 = false;
  bool is4k = false;
}

class WebLayoutView extends StatelessWidget {

  final Widget Function(BuildContext context, BoxConstraints constraints, DeviceDetails deviceDetails) builder;

  const WebLayoutView({
    Key? key,
    required this.builder
  
  }) : super(key: key);

  DeviceDetails getDeviceDetails(BoxConstraints constraints) {
    DeviceDetails deviceDetails = DeviceDetails();
    double width = constraints.maxWidth;
    if (width >= 2160) {
      deviceDetails.isComputer = true;
      deviceDetails.is4k = true;
    }
    else if (width >= 1440) {
      deviceDetails.is1440 = true;
      deviceDetails.isComputer = true;
    }
    else if (width >= 1080) {
      deviceDetails.is1080 = true;
      deviceDetails.isComputer = true;
    }
    else if (width >= 992) {
      deviceDetails.isComputer = true;
    }
    else if (width >= 768) {
      deviceDetails.isTablet = true;
      deviceDetails.isMobile = true;
    }
    else {
      deviceDetails.isMobile = true;
    }
    return deviceDetails;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          body: SizedBox(  
            height: constraints.maxHeight,
            child: SingleChildScrollView(  
              child: builder(context, constraints, getDeviceDetails(constraints)),
            ),
          ),
        );
      }
    );
  }
  
}