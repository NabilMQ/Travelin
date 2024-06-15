import 'package:flutter/material.dart';

class ImageContent extends StatefulWidget {
  const ImageContent({
    super.key,
    required this.image, 
  });

  final String image;

  @override
  State <ImageContent> createState() => _ImageContentState();
}

class _ImageContentState extends State<ImageContent> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 8,
      child: Image.asset(
        widget.image, 
        alignment: Alignment.bottomCenter,
        fit: BoxFit.scaleDown,
      ),
    );
  }
}