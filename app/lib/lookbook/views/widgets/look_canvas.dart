import 'package:app/lookbook/models/LookbookImage.dart';
import 'package:flutter/material.dart';

class LookCanvas extends StatelessWidget {
  final LookbookImage lookImage;
  final double width;

  const LookCanvas({
    Key? key, 
    required this.lookImage, 
    required this.width
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = (16/9) * width;
    return Material(
      borderRadius: BorderRadius.circular(20.0),
      elevation: 10.0,
      child: Container(  
        height: height,
        width: width,
        decoration: BoxDecoration(  
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(  
            image: NetworkImage(lookImage.imageURL),
            fit: BoxFit.cover
          )
        ),
        child: Stack(  
          children: [
            Positioned(
              right: 0.0,
              top: 0.0,
              child: IconButton(
                color: Colors.grey,
                onPressed: () => {
                }, 
                icon: const Icon(Icons.share_outlined)
              )
            ),
          ],
        ),
      ),
    );
  }
  
}