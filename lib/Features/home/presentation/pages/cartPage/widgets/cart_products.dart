import 'package:e_commerce/Core/utils/responsiveUi/responsive_height.dart';
import 'package:e_commerce/Features/home/presentation/pages/cartPage/widgets/delete_slidable.dart';
import 'package:e_commerce/Features/home/presentation/pages/cartPage/widgets/product_counter.dart';
import 'package:e_commerce/Features/home/presentation/pages/cartPage/widgets/slidable_child.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class CartProducts extends StatelessWidget {
  const CartProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
          padding:
              EdgeInsets.only(top: widgetHeight(context: context, height: 8)),
          itemBuilder: ((context, index) {
            return Slidable(
              key: ValueKey(index),
              startActionPane: const ActionPane(
                motion: ScrollMotion(),
                extentRatio: 0.25,
                children:  [
                  ProductCounter()
                ],
              ),
              endActionPane: const ActionPane(
                motion: ScrollMotion(),
                extentRatio: 0.25,
                children:  [
                  DeleteSlidable(),
                ],
              ),
              child: const SlidableChild(),
            );
          }),
          separatorBuilder: ((context, index) =>
              SizedBox(height: widgetHeight(context: context, height: 14))),
          itemCount: 8),
    );
  }
}
