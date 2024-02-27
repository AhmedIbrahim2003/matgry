import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'dart:ui' as ui;

import '../../../../../core/shared/widgets/shoes_photo_widget.dart';
import '../../../../../gen/assets.gen.dart';

class ShoesPhoto extends StatelessWidget {
  const ShoesPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ShoesPhotoWidget(
          photoPath: Assets.images.home.nikeshoes1.path,
          width: 260,
          height: 280,
          padding: const EdgeInsets.only(right: 50, bottom: 85),
        ),
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CustomPaint(
              size: Size(MediaQuery.sizeOf(context).width,
                  (MediaQuery.sizeOf(context).width * 0.21875).toDouble()),
              painter: RPSCustomPainter(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: HexColor('#707B81'),
                    borderRadius: const BorderRadius.horizontal(
                      left: Radius.circular(20),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                      size: 11,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: HexColor('#707B81'),
                    borderRadius: const BorderRadius.horizontal(
                      right: Radius.circular(20),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 11,
                    ),
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.9971591, size.height * 0.4415571);
    path_0.cubicTo(
        size.width * 0.9971591,
        size.height * 0.4671468,
        size.width * 0.9942358,
        size.height * 0.4937286,
        size.width * 0.9878920,
        size.height * 0.5211026);
    path_0.cubicTo(
        size.width * 0.9815483,
        size.height * 0.5484766,
        size.width * 0.9720369,
        size.height * 0.5754987,
        size.width * 0.9595284,
        size.height * 0.6016182);
    path_0.cubicTo(
        size.width * 0.9345256,
        size.height * 0.6538221,
        size.width * 0.8981676,
        size.height * 0.7011597,
        size.width * 0.8530142,
        size.height * 0.7410351);
    path_0.cubicTo(
        size.width * 0.7627585,
        size.height * 0.8207416,
        size.width * 0.6379460,
        size.height * 0.8701286,
        size.width * 0.5000000,
        size.height * 0.8701286);
    path_0.cubicTo(
        size.width * 0.3620540,
        size.height * 0.8701286,
        size.width * 0.2372420,
        size.height * 0.8207416,
        size.width * 0.1469855,
        size.height * 0.7410351);
    path_0.cubicTo(
        size.width * 0.1018338,
        size.height * 0.7011597,
        size.width * 0.06547528,
        size.height * 0.6538221,
        size.width * 0.04047273,
        size.height * 0.6016182);
    path_0.cubicTo(
        size.width * 0.02796284,
        size.height * 0.5754987,
        size.width * 0.01845119,
        size.height * 0.5484766,
        size.width * 0.01210844,
        size.height * 0.5211026);
    path_0.cubicTo(
        size.width * 0.005765455,
        size.height * 0.4937286,
        size.width * 0.002840909,
        size.height * 0.4671468,
        size.width * 0.002840909,
        size.height * 0.4415571);
    path_0.cubicTo(
        size.width * 0.002840909,
        size.height * 0.4159675,
        size.width * 0.005765455,
        size.height * 0.3893857,
        size.width * 0.01210844,
        size.height * 0.3620104);
    path_0.cubicTo(
        size.width * 0.01845119,
        size.height * 0.3346377,
        size.width * 0.02796284,
        size.height * 0.3076156,
        size.width * 0.04047273,
        size.height * 0.2814961);
    path_0.cubicTo(
        size.width * 0.06547528,
        size.height * 0.2292922,
        size.width * 0.1018338,
        size.height * 0.1819532,
        size.width * 0.1469855,
        size.height * 0.1420792);
    path_0.cubicTo(
        size.width * 0.2372420,
        size.height * 0.06237208,
        size.width * 0.3620540,
        size.height * 0.01298543,
        size.width * 0.5000000,
        size.height * 0.01298543);
    path_0.cubicTo(
        size.width * 0.6379460,
        size.height * 0.01298543,
        size.width * 0.7627585,
        size.height * 0.06237208,
        size.width * 0.8530142,
        size.height * 0.1420792);
    path_0.cubicTo(
        size.width * 0.8981676,
        size.height * 0.1819532,
        size.width * 0.9345256,
        size.height * 0.2292922,
        size.width * 0.9595284,
        size.height * 0.2814961);
    path_0.cubicTo(
        size.width * 0.9720369,
        size.height * 0.3076156,
        size.width * 0.9815483,
        size.height * 0.3346377,
        size.width * 0.9878920,
        size.height * 0.3620104);
    path_0.cubicTo(
        size.width * 0.9942358,
        size.height * 0.3893857,
        size.width * 0.9971591,
        size.height * 0.4159675,
        size.width * 0.9971591,
        size.height * 0.4415571);
    path_0.close();

    Paint paint_0_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.005681818;
    paint_0_stroke.shader = ui.Gradient.linear(
        Offset(size.width * 0.5000000, size.height * 0.3532455),
        Offset(size.width * 0.5000000, size.height * 0.8831156), [
      const Color(0xff000000).withOpacity(0),
      const Color(0xff2363F6).withOpacity(1)
    ], [
      0,
      1
    ]);
    canvas.drawPath(path_0, paint_0_stroke);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
