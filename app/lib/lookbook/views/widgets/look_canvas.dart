import 'package:app/lookbook/models/LookbookImage.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import '../screens/looks_screen.dart';

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
    return InkWell(
      onTap: () async { 
        context.router.replaceNamed(
          "${LooksScreen.path}/${lookImage.id}"
        );
      },
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
          clipBehavior: Clip.none,
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

class ImagePopup extends StatelessWidget {
  final LookbookImage image;
  final double width;
  final bool isMobile;

  const ImagePopup({
    Key? key, 
    required this.image,
    required this.width,
    required this.isMobile
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {

    double height = (16/9) * (width * 1.50);


    return Dialog(
      child: Container(  
        width: width * 1.50,
        height: height,
        decoration: BoxDecoration(  
          image: DecorationImage(  
            image: NetworkImage(  
              image.imageURL
            ),
            fit: BoxFit.cover
          )
        ),
      ),
    );
  }
  
}