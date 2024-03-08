// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:matgry/constant.dart';
import 'package:matgry/features/home/presentaion/view%20model/home%20cubit/home_cubit.dart';

import '../../../../../gen/assets.gen.dart';
import '../../view model/home cubit/home_states.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = HomeCubit.get(context);
    var size = MediaQuery.sizeOf(context);
    return BlocConsumer<HomeCubit, HomeStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Container(
          height: 106,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: CustomPaint(
                  size: Size(
                    size.width,
                    (size.width * 0.29333333333333333).toDouble(),
                  ),
                  painter: RPSCustomPainter(),
                ),
              ),
              Positioned(
                bottom: 30,
                left: 31,
                child: GestureDetector(
                  onTap: () {
                    cubit.bottomNavIndexChange(newIndex: 0);
                  },
                  child: SvgPicture.asset(
                    Assets.images.home.homeicon,
                    color: cubit.bottomNavIndex == 0 ? blueColor : null,
                  ),
                ),
              ),
              Positioned(
                bottom: 30,
                left: 94,
                child: GestureDetector(
                  onTap: () {
                    cubit.bottomNavIndexChange(newIndex: 1);
                  },
                  child: SvgPicture.asset(
                    Assets.images.home.favoriteicon,
                    color: cubit.bottomNavIndex == 1 ? blueColor : null,
                  ),
                ),
              ),
              Positioned(
                bottom: 50,
                left: 169,
                child: FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: blueColor,
                  child: SvgPicture.asset(
                    Assets.images.home.cartlogo,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                bottom: 30,
                right: 95,
                child: GestureDetector(
                  onTap: () {
                    cubit.bottomNavIndexChange(newIndex: 2);
                  },
                  child: SvgPicture.asset(
                    Assets.images.home.notificationicon,
                    color: cubit.bottomNavIndex == 2 ? blueColor : null,
                  ),
                ),
              ),
              Positioned(
                bottom: 30,
                right: 31,
                child: GestureDetector(
                  onTap: () {
                    cubit.bottomNavIndexChange(newIndex: 3);
                  },
                  child: SvgPicture.asset(
                    Assets.images.home.profileicon,
                    color: cubit.bottomNavIndex == 3 ? blueColor : null,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.3244320, size.height * 0.2227273);
    path_0.cubicTo(
        size.width * 0.1781040,
        size.height * 0.2336364,
        size.width * 0.04717413,
        size.height * 0.1030300,
        0,
        size.height * 0.03636364);
    path_0.lineTo(0, size.height);
    path_0.lineTo(size.width, size.height);
    path_0.lineTo(size.width, size.height * 0.03636364);
    path_0.cubicTo(
        size.width * 0.9279040,
        size.height * 0.2136364,
        size.width * 0.7383173,
        size.height * 0.2181818,
        size.width * 0.6809067,
        size.height * 0.2181818);
    path_0.cubicTo(
        size.width * 0.6234987,
        size.height * 0.2181818,
        size.width * 0.6128160,
        size.height * 0.2454545,
        size.width * 0.6128160,
        size.height * 0.3227273);
    path_0.cubicTo(
        size.width * 0.6128160,
        size.height * 0.4000000,
        size.width * 0.6250267,
        size.height * 0.6107127,
        size.width * 0.5540720,
        size.height * 0.6409091);
    path_0.cubicTo(
        size.width * 0.4152213,
        size.height * 0.7000000,
        size.width * 0.3881067,
        size.height * 0.5409091,
        size.width * 0.3858480,
        size.height * 0.4409091);
    path_0.cubicTo(
        size.width * 0.3831787,
        size.height * 0.3227273,
        size.width * 0.3898533,
        size.height * 0.2227273,
        size.width * 0.3244320,
        size.height * 0.2227273);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Colors.white.withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
