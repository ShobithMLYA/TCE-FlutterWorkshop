import 'package:flutter/material.dart';
import 'package:flutter_week2/controllers/image_data.dart';
import 'package:flutter_week2/views/widgets/imageGrid/imageCard.dart';

class ImageGrid extends StatelessWidget {
  const ImageGrid({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: imageList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
      ),
      itemBuilder: (context, index) => ImageCard(
        imageData: imageList[index],
      ),
    );
  }
}