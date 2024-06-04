import 'package:flutter/material.dart';

class ImageContent extends StatefulWidget {
  const ImageContent({
    Key? key,
    required this.image, 
  }) : super(key: key);

  final String image;

  @override
  State <ImageContent> createState() => _ImageContentState();
}

class _ImageContentState extends State<ImageContent> {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      widget.image, 
      alignment: Alignment.bottomCenter,
      fit: BoxFit.scaleDown,
    );
  }
}