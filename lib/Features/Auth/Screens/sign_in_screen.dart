// ignore_for_file: missing_required_param
import 'package:auth/Common/big_text.dart';
import 'package:auth/Common/colors..dart';
import 'package:auth/Common/dimensions.dart';
import 'package:auth/Common/small_text.dart';
import 'package:auth/Features/Auth/Widgets/custom_text_filed.dart';
import 'package:auth/Features/Auth/Widgets/form_button.dart';
import 'package:auth/Routes/route_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
        backgroundColor: AppColors.mainBackground,
        body: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              //
              Positioned(
                top: -10.0,
                right: -30.0,
                child: Image.asset(
                  "assets/images/Vector.png",
                  width: rValue(
                    context: context,
                    defaultValue: 170.0,
                    whenSmaller: 140.0,
                  ),
                ),
              ),

              // ************************** Form **************************

              Positioned(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: Form(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              SizedBox(
                                width: double.maxFinite,
                                height: rValue(
                                  context: context,
                                  defaultValue: 80.0,
                                  whenSmaller: 60.0,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    BigText(
                                      text: "Login",
                                      size: rValue(
                                        context: context,
                                        defaultValue: 35.0,
                                        whenSmaller: 25.0,
                                      ),
                                    ),
                                    const SizedBox(height: 10.0),
                                    SmallText(
                                      text: "Please sign in to continue",
                                      size: rValue(
                                        context: context,
                                        defaultValue: 17.0,
                                        whenSmaller: 13.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 35.0),

                              // ************************** Email **************************

                              CustomTextField(
                                label: "EMAIL",
                                icon: Icons.email_outlined,
                                controller: emailController,
                              ),

                              // ************************** Password **************************

                              CustomTextField(
                                label: "PASSWORD",
                                icon: Icons.password,
                                controller: passwordController,
                                obscureText: true,
                                isPassword: true,
                                onForgotTap: () {},
                              ),
                            ],
                          ),

                          const SizedBox(height: 30.0),

                          // ************************** Sign in button **************************

                          SizedBox(
                            width: double.maxFinite,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                FormButton(
                                  text: "LOGIN",
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 30.0),

                          const SizedBox(height: 10.0),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              // ************************** Don't have an account? **************************

              Positioned(
                bottom: 30.0,
                left: 0.0,
                right: 0.0,
                child: Center(
                  child: Wrap(
                    children: <Widget>[
                      SmallText(
                        text: "Don't have an account ?",
                        color: AppColors.textColor,
                        size: rValue(
                          context: context,
                          defaultValue: 14.0,
                          whenSmaller: 12.0,
                        ),
                      ),

                      // ************************** To Sign up  **************************

                      TextButton(
                          onPressed: _toSignUpPage,
                          style: TextButton.styleFrom(
                            minimumSize: const Size(0.0, 0.0),
                          ),
                          child: BigText(
                            text: "Sign up !",
                            color: AppColors.mainYellow,
                            size: rValue(
                              context: context,
                              defaultValue: 14.0,
                              whenSmaller: 12.0,
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  void _toSignUpPage() {
    Get.toNamed(RouteHelper.goToSignUpScreen());
  }
}
