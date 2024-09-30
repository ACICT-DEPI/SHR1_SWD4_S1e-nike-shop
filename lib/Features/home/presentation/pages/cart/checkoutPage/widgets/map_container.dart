
import 'package:e_commerce/Core/utils/constants/colors.dart';
import 'package:e_commerce/Core/utils/responsiveUi/responsive_height.dart';
import 'package:e_commerce/Core/utils/responsiveUi/responsive_width.dart';
import 'package:flutter/material.dart';

class MapContainer extends StatelessWidget {
  const MapContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: widgetHeight(context: context, height: 101),
          width: widgetWidth(context: context, width: 295),
          decoration: BoxDecoration(
            color: kSecondaryColor,
            borderRadius:
                BorderRadius.circular(widgetWidth(context: context, width: 8)),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 5,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius:
                BorderRadius.circular(widgetWidth(context: context, width: 8)),
            child: Image.asset('assets/images/checkout/google_map.jpg',
                fit: BoxFit.cover),
          ),
        ),
        Container(
          height: widgetHeight(context: context, height: 101),
          width: widgetWidth(context: context, width: 295),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.5),
            borderRadius:
                BorderRadius.circular(widgetWidth(context: context, width: 8)),
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "View Map",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'Raleway',
                ),
              ),
              CircleAvatar(
                radius: 18,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.location_on,
                  color: Colors.white,
                ),
              ),
              
            ],
          ),
        )
      ],
    );
  }
}
