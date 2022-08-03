// ignore_for_file: missing_required_param
import 'package:auth/Common/big_text.dart';
import 'package:auth/Common/colors..dart';
import 'package:auth/Common/dimensions.dart';
import 'package:auth/Common/small_text.dart';
import 'package:auth/Features/Auth/Widgets/custom_text_filed.dart';
import 'package:auth/Features/Auth/Widgets/form_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
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

              // ************************** Back To Prev **************************

              Positioned(
                top: rValue(
                  context: context,
                  defaultValue: 50.0,
                  whenSmaller: 40.0,
                ),
                left: rValue(
                  context: context,
                  defaultValue: 20.0,
                  whenSmaller: 15.0,
                ),
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back,
                    color: AppColors.textColor,
                  ),
                  onPressed: () => Get.back(),
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
                                  defaultValue: 70.0,
                                  whenSmaller: 50.0,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    BigText(
                                      text: "Create Account",
                                      size: rValue(
                                        context: context,
                                        defaultValue: 30.0,
                                        whenSmaller: 25.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: rValue(
                                  context: context,
                                  defaultValue: 20.0,
                                  whenSmaller: 10.0,
                                ),
                              ),

                              // ************************** Full Name **************************

                              CustomTextField(
                                label: "FULL NAME",
                                icon: Icons.email_outlined,
                                controller: nameController,
                              ),

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
                              ),

                              // ************************** Confirm Password **************************

                              CustomTextField(
                                label: "CONFIRM PASSWORD",
                                icon: Icons.password,
                                controller: passwordController,
                                obscureText: true,
                              ),
                            ],
                          ),

                          SizedBox(
                            height: rValue(
                              context: context,
                              defaultValue: 30.0,
                              whenSmaller: 20.0,
                            ),
                          ),

                          // ************************** Sign up button **************************

                          SizedBox(
                            width: double.maxFinite,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                FormButton(
                                  text: "SIGN UP",
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              // ************************** Have an Account ? **************************

              Positioned(
                bottom: 30.0,
                left: 0.0,
                right: 0.0,
                child: Center(
                  child: Wrap(
                    children: <Widget>[
                      SmallText(
                        text: "Already have an account ?",
                        color: AppColors.textColor,
                        size: rValue(
                          context: context,
                          defaultValue: 14.0,
                          whenSmaller: 12.0,
                        ),
                      ),

                      // ************************** To Sign in  **************************

                      TextButton(
                        onPressed: _toSignInPage,
                        style: TextButton.styleFrom(
                          minimumSize: const Size(0.0, 0.0),
                        ),
                        child: BigText(
                          text: "Sign in !",
                          color: AppColors.mainYellow,
                          size: rValue(
                            context: context,
                            defaultValue: 14.0,
                            whenSmaller: 12.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  void _toSignInPage() {
    Get.back();
  }
}
