import 'package:e_commerce/Core/cache/cache_data.dart';
import 'package:e_commerce/Core/utils/constants/colors.dart';
import 'package:e_commerce/Core/utils/generalVariable/general_variable.dart';
import 'package:e_commerce/Core/utils/responsiveUi/responsive_width.dart';
import 'package:e_commerce/Features/home/presentation/manager/home_cubit.dart';
import 'package:e_commerce/Features/home/presentation/pages/cart/cartPage/widgets/cart_products.dart';
import 'package:e_commerce/Features/home/presentation/pages/cart/cartPage/widgets/cart_total.dart';
import 'package:e_commerce/Features/home/presentation/pages/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  void initState() {
    getProducts();
    super.initState();
  }
  getProducts() async {
    GeneralVariable.cartProduct=[];
    GeneralVariable.id= CacheData.getIdListData(key: "id_list")??[];
    for(int i=0;i<GeneralVariable.id.length;i++){
      for(int n=0;n<HomeCubit.get(context).productRepoImp.products.length;n++) {
        if(GeneralVariable.id[i]==HomeCubit.get(context).productRepoImp.products[n].id){
        GeneralVariable.cartProduct.add(HomeCubit.get(context).productRepoImp.products[n]);
      }
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        return await getProducts();
      },
      child: Scaffold(
        backgroundColor: kPrimaryBackgroundColor,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(
                title: 'My Cart',
              ),
              Expanded(
                  child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: widgetWidth(context: context, width: 20)),
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${GeneralVariable.cartProduct.length.toString()} item",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          fontFamily: 'Poppins'),
                    ),
                    CartProducts(),
                  ],
                ),
              )),
              const CartTotal(),
            ],
          ),
        ),
      ),
    );
  }
}
