import 'package:flutter/material.dart';

enum BoxSize {
  large(150),
  middum(100),
  small(50);

  const BoxSize(this.size);
  final double size;
}

class TargetButton extends StatelessWidget {
  final BoxSize size;
  final void Function(TapDownDetails)? onTapDown;
  const TargetButton({super.key, required this.size, this.onTapDown});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: onTapDown,
      child: Card(
        color: Colors.black,
        child: SizedBox(
          width: size.size,
          height: size.size,
        ),
      ),
    );
  }
}
