import 'package:auth/Features/Auth/Screens/sign_in_screen.dart';
import 'package:auth/Features/Auth/Screens/sign_up_screen.dart';
import 'package:get/get.dart';

class RouteHelper {
  static const String signIn = "/sign-in";
  static const String signUp = "/sign-up";

// ***** For Passing Parameters in our App *****

  static String goToSignInScreen() => signIn;
  static String goToSignUpScreen() => signUp;

// ****************************************

  static List<GetPage> routes = <GetPage>[
    GetPage(
      name: signIn,
      page: () => const SignInScreen(),
    ),
    GetPage(
      name: signUp,
      page: () => const SignUpScreen(),
      transition: Transition.fade,
    ),
  ];
}
