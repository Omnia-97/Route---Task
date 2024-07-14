import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:route_task/config.dart';
import 'package:route_task/core/components/reusable_components.dart';
import 'package:route_task/core/utils/app_colors.dart';
import 'package:route_task/core/utils/app_images.dart';
import 'package:route_task/core/utils/app_strings.dart';
import 'package:route_task/core/utils/styles.dart';
import 'package:route_task/features/products/presentation/bloc/product_bloc.dart';
import 'package:route_task/features/products/presentation/widgets/product_item.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});
  static const String routeName = 'ProductScreen';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProductBloc>()
        ..add(
          const GetProductsEvent(),
        ),
      child: BlocConsumer<ProductBloc, ProductState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              elevation: 0,
              leadingWidth: 16.w,
              backgroundColor: AppColor.whiteColor,
              toolbarHeight: 95.h,
              title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(AppImages.routeSvg,
                        width: 66.w, height: 22.h),
                    SizedBox(height: 18.h),
                    Row(
                      children: [
                        SizedBox(
                          width: 348.w,
                          child: customTextFormField(
                              height: 50.h,
                              hintStyle: AppStyles.bodyS.copyWith(
                                  color: AppColor.textColor.withOpacity(.6),
                                  fontSize: 14),
                              hintText: AppStrings.searchHint,
                              borderColor: AppColor.primaryColor,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 16.w, vertical: 8.h),
                              prefixIcon: const ImageIcon(
                                AssetImage(AppImages.search),
                                size: 21,
                                color: AppColor.primaryColor,
                              ),
                              radius: 25),
                        ),
                        const Spacer(),
                        const ImageIcon(
                          AssetImage(AppImages.cart),
                          size: 24,
                          color: AppColor.primaryColor,
                        ),
                      ],
                    )
                  ]),
            ),
            body: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.w, 26.h, 16.w, 16.h),
              child: GridView.builder(
                itemBuilder: (context, index) {
                  return ProductItem(
                      products: state.getAllProductsModel?.products ?? [],
                      index: index);
                },
                itemCount: state.getAllProductsModel?.products?.length ?? 0,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16.w,
                  crossAxisSpacing: 16.h,
                  childAspectRatio: .73,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
