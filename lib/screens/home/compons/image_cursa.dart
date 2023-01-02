import 'package:flutter/material.dart';

import '../../../contants.dart';
import '../../../demo_data.dart';

class ImageCurs extends StatefulWidget {
  const ImageCurs({
    Key? key,
  }) : super(key: key);

  @override
  State<ImageCurs> createState() => _ImageCursState();
}

class _ImageCursState extends State<ImageCurs> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.81,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          PageView.builder(
            itemCount: demoBigImages.length,
            onPageChanged: (val) {
              setState(() {
                _currentIndex = val;
              });
            },
            itemBuilder: (context, index) => ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                child: Image.asset(demoBigImages[index])),
          ),
          Positioned(
            bottom: defaultPadding,
            right: defaultPadding,
            child: Row(
              children: List.generate(
                  demoBigImages.length,
                  (index) => Padding(
                        padding: const EdgeInsets.only(left: 4),
                        child: IndicateDot(isActive: index == _currentIndex),
                      )),
            ),
          )
        ],
      ),
    );
  }
}

class IndicateDot extends StatelessWidget {
  const IndicateDot({
    Key? key,
    required this.isActive,
  }) : super(key: key);

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4,
      width: 8,
      decoration: BoxDecoration(
          color: isActive ? Colors.white : Colors.white38,
          borderRadius: BorderRadius.all(Radius.circular(6))),
    );
  }
}
