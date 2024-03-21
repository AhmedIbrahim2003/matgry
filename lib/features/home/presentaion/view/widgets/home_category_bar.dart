import 'package:flutter/material.dart';
import 'package:matgry/constant.dart';
import 'package:matgry/features/home/data/model/categories_model/categories/datum.dart';

class HomeCategoryBar extends StatefulWidget {
  const HomeCategoryBar({super.key, required this.categories});
  final List<Datum> categories;

  @override
  State<HomeCategoryBar> createState() => _HomeCategoryBarState();
}

class _HomeCategoryBarState extends State<HomeCategoryBar> {
  bool isPressed = false;
  int tempIndex = 5000;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 24),
          const Text(
            'Select Category',
            style: TextStyle(
              color: Color(0xFF2B2B2B),
              fontSize: 16,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 55,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.categories.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTapDown: (e) => setState(() {
                    tempIndex = index;
                  }),
                  onTapUp: (e) => setState(() {
                    tempIndex = 5000;
                  }),
                  child: Container(
                    margin: const EdgeInsets.only(right: 15),
                    width: 125,
                    height: 50,
                    decoration: ShapeDecoration(
                      color: tempIndex == index ? blueColor : Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x0A000000),
                          blurRadius: 48,
                          offset: Offset(0, 2),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Center(
                      child: Text(
                        widget.categories[index].name!,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: tempIndex == index
                              ? Colors.white
                              : const Color(0xFF2B2B2B),
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
