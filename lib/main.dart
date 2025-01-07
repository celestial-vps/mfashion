import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:mfashion/core/misc/size_config.dart';
import 'package:mfashion/getxs/app_page.dart';
import 'package:mfashion/getxs/route_name.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  var storage = const FlutterSecureStorage();
  var accessToken = await storage.read(key: "access_token");
  runApp(MyApp(
    accessToken: accessToken,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, this.accessToken}) : super(key: key);
  final String? accessToken;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(builder: (context, orientation) {
          SizeConfig().init(constraints, orientation);
          return GetMaterialApp(
            locale: const Locale('en'),
            theme: ThemeData(primarySwatch: Colors.blue),
            debugShowCheckedModeBanner: false,
            initialRoute:
                (accessToken == null) ? RouteName.intro : RouteName.intro,
            // initialRoute: (accessToken == null) ? RouteName.home : '/',
            getPages: AppPages.pages,
          );
        });
      },
    );
  }
}
