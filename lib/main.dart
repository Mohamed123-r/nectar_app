import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/core/api/dio_consumer.dart';
import 'package:nectar/core/database/cache/cache_helper.dart';
import 'package:nectar/features/splash/presentation/view/splash_view.dart';

import 'features/logIn/presentation/manager/cubits/log_in_cubit.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper().init();

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.transparent, // navigation bar color
      statusBarColor: Colors.transparent, // status bar color
    ),
  );

  runApp(
    BlocProvider(
        create: (context) => LogInCubit(
          DioConsumer(dio: Dio()),
        ),
        child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(413.83, 896),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashView(),
      ),
    );
  }
}
