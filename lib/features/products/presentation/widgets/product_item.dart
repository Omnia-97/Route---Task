import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_task/core/utils/app_colors.dart';
import 'package:route_task/core/utils/app_images.dart';
import 'package:route_task/core/utils/app_strings.dart';
import 'package:route_task/core/utils/styles.dart';
import 'package:route_task/features/products/data/models/GetAllProductsModel.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.products,
    required this.index,
  });
  final List<Products>? products;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border:
            Border.all(color: AppColor.primaryColor.withOpacity(.3), width: 2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.r),
                  topRight: Radius.circular(15.r),
                ),
                child: CachedNetworkImage(
                  width: 191.w,height: 140.h,
                  imageUrl: products?[index].images?[0] ?? 'Image',
                  fit: BoxFit.cover,
                  progressIndicatorBuilder:
                      (context, url, downloadProgress) => Center(
                    child: CircularProgressIndicator(color: AppColor.primaryColor,
                        value: downloadProgress.progress),
                  ),
                  errorWidget: (context, url, error) =>
                      const Icon(Icons.image_not_supported_outlined),
                ),
              ),
              Positioned(
                top: 8.h,
                left: 140.w,
                child: Image.asset('assets/images/fav.png'),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 8.0.h, right: 8.w, left: 8.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  products?[index].title ?? 'Title',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppStyles.generalText.copyWith(fontSize: 14),
                ),
                Text(
                  products?[index].description ?? 'Description',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                  style: AppStyles.generalText.copyWith(fontSize: 14),
                ),
                SizedBox(height: 8.h),
                Row(
                  children: [
                    Text(
                      ' EGP ${products?[index].discountPercentage ?? products?[index].price!}',
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: AppStyles.generalText.copyWith(fontSize: 14),
                    ),
                    SizedBox(width: 16.w),
                    Visibility(
                      visible: products?[index].discountPercentage != null &&
                          products?[index].discountPercentage !=
                              products?[index].price,
                      child: Text(
                        ' EGP ${products?[index].price}',
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: AppStyles.generalText.copyWith(
                          fontSize: 11,
                          decoration: TextDecoration.lineThrough,
                          color: AppColor.primaryColor.withOpacity(.6),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.h),
                Row(
                  children: [
                    Text(
                      AppStrings.review,
                      style: AppStyles.generalText,
                    ),
                    SizedBox(width: 4.w),
                    Text(
                      '(${products?[index].rating})',
                      style: AppStyles.generalText,
                    ),
                    SizedBox(width: 4.w),
                    Icon(
                      Icons.star,
                      color: AppColor.starColor,
                      size: 15,
                    ),
                    const Spacer(),
                    const Icon(Icons.add_circle,
                        color: AppColor.primaryColor, size: 30)
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
