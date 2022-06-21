import 'ui/custom_colors.dart';
import 'utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fantasia',
      theme: ThemeData(primaryColor: kPrimaryColor, textTheme: GoogleFonts.robotoTextTheme(Theme.of(context).textTheme)),
      defaultTransition: Transition.cupertino,
      initialRoute: "/",
      getPages: Routes.pages,
    );
  }
}
