
import 'package:e_commerce/Core/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class ExpandedIcon extends StatelessWidget {
  const ExpandedIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: const Icon(
        Icons.expand_more_outlined,
        color: kSecondaryColor,
      ),
    );
  }
}
