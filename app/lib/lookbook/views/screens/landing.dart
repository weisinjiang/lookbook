import 'package:app/core/utils/web_layout_view.dart';
import 'package:app/lookbook/models/LookbookImage.dart';
import 'package:app/lookbook/views/widgets/look_canvas.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  List<LookbookImage> images = [
    LookbookImage(imageURL: "https://cdn.shopify.com/s/files/1/0550/0855/9354/products/image_dc2c1d22-0465-4daf-ab10-b8e673413f54_1445x.png?v=1642114351"),
    LookbookImage(imageURL: "https://cdn.shopify.com/s/files/1/0550/0855/9354/products/image_ca726f3e-c3e3-490c-b563-5f249caed776_1445x.jpg?v=1642116953"),
    LookbookImage(imageURL: "https://cdn.shopify.com/s/files/1/0550/0855/9354/products/image_aef50df0-572c-41dd-a671-bafb5de552c7_1445x.jpg?v=1642114351"),
    LookbookImage(imageURL: "https://cdn.shopify.com/s/files/1/0550/0855/9354/products/image_931c8db3-98d2-4dff-a6bc-3114aa661827_1445x.jpg?v=1642114474"),
    LookbookImage(imageURL: "https://cdn.shopify.com/s/files/1/0550/0855/9354/products/image_57764be7-0264-4360-8ff7-bda6b73df4e3_1445x.jpg?v=1642121695"),
    LookbookImage(imageURL: "https://cdn.shopify.com/s/files/1/0550/0855/9354/products/image_74b28bdc-cc7b-4da4-af6b-0834b4c79342_1445x.jpg?v=1642121695")
  ];

  double getLookWidth(DeviceDetails details, BoxConstraints constraints) {
    if (details.isComputer) {
      return constraints.maxWidth * 0.20;
    }
    else if (details.isTablet) {
      return constraints.maxWidth * 0.25;
    }
    else {
      return constraints.maxWidth * 0.43;
    }
  }

  @override
  Widget build(BuildContext context) {
    return WebLayoutView(builder: (context, constraints, deviceDetails) {
      double width = getLookWidth(deviceDetails, constraints);
      return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Wrap(
            spacing: 15.0,
            runSpacing: 10.0,
            children: List<Widget>.generate(15, (index){ 
              int i = (index % images.length);
              return LookCanvas(lookImage: images[i], width: width);
            }),
          ),
        ),
      );
    });
  }
}