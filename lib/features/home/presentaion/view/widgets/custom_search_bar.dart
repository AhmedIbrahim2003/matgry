import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:matgry/gen/assets.gen.dart';

import '../../../../../constant.dart';
import '../../../../search/presentation/view/search_view.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return GestureDetector(
      onTap: () =>
          myPushNavigator(context: context, destination: const SearchView()),
      child: Align(
        alignment: Alignment.topCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 269,
              height: 52,
              padding: const EdgeInsets.only(
                top: 14,
                left: 26,
                right: 57,
                bottom: 14,
              ),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x0A000000),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                    child: SvgPicture.asset(Assets.images.home.searchicon),
                  ),
                  const SizedBox(width: 12),
                  const Text(
                    'Looking for shoes',
                    style: TextStyle(
                      color: Color(0xFF6A6A6A),
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 1.67,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: size.height / 12,
              width: size.width / 8,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: blueColor),
              child: SvgPicture.asset(
                Assets.images.home.sortingicon,
                allowDrawingOutsideViewBox: true,
                fit: BoxFit.scaleDown,
              ),
            )
          ],
        ),
      ),
    );
  }
}
