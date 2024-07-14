import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_task/features/products/presentation/pages/product_screen.dart';

import 'config.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const RouteTask());
}

class RouteTask extends StatelessWidget {
  const RouteTask({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: ProductScreen.routeName,
        routes: {
          ProductScreen.routeName: (context) => const ProductScreen(),
        },
      ),
    );
  }
}
