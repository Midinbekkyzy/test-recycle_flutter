import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CarPhoto extends StatelessWidget {
  const CarPhoto({
    super.key,
    required this.path,
    required this.height,
    this.width,
    this.borderRadius = 16,
  });

  final String path;
  final double? width;
  final double height;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final photoWidth = width ?? constraints.maxWidth;
        // Chrome from VS Code has no WebGL, so CanvasKit draws a blank box.
        // An HTML image still shows the photo.
        final image =
            kIsWeb
                ? Image.network(
                  'assets/$path',
                  width: photoWidth,
                  height: height,
                  fit: BoxFit.cover,
                  webHtmlElementStrategy: WebHtmlElementStrategy.prefer,
                  errorBuilder: _error,
                )
                : Image.asset(
                  path,
                  width: photoWidth,
                  height: height,
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.low,
                  errorBuilder: _error,
                );

        if (kIsWeb) return image;

        return ClipRRect(
          borderRadius: BorderRadius.circular(borderRadius),
          child: image,
        );
      },
    );
  }

  Widget _error(BuildContext context, Object error, StackTrace? stack) {
    return SizedBox(
      width: width,
      height: height,
      child: const ColoredBox(
        color: Color(0xFFF3E9F8),
        child: Icon(
          Icons.directions_car_outlined,
          color: Color.fromARGB(255, 104, 7, 7),
        ),
      ),
    );
  }
}
