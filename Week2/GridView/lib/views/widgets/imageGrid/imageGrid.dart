import 'package:flutter/material.dart';
import 'package:flutter_week2/controllers/image_data.dart';
import 'package:flutter_week2/views/widgets/imageGrid/imageCard.dart';

class ImageGrid extends StatefulWidget {
  const ImageGrid({Key key}) : super(key: key);
  @override
  _ImageGridState createState() => _ImageGridState();
}

class _ImageGridState extends State<ImageGrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Grid"),
      ),
      body: GridView.builder(
        itemCount: imageList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
        ),
        itemBuilder: (context, index) => ImageCard(
          imageData: imageList[index],
        ),
      ),
    );
  }
}
