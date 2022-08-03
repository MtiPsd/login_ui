import 'package:auth/Common/big_text.dart';
import 'package:auth/Common/colors..dart';
import 'package:auth/Common/dimensions.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String label;
  final IconData icon;
  final TextEditingController? controller;
  final bool obscureText;
  final TextInputType keyboardType;
  final Color textColor;
  final bool isPassword;
  final VoidCallback? onForgotTap;
  const CustomTextField({
    Key? key,
    required this.label,
    required this.icon,
    this.controller,
    this.obscureText = false,
    this.keyboardType = TextInputType.emailAddress,
    this.textColor = const Color.fromARGB(255, 28, 27, 43),
    this.isPassword = false,
    @required this.onForgotTap,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late FocusNode focusNode;
  static GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    focusNode = FocusNode();
    focusNode.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: focusNode.hasFocus ? 10.0 : 1.0,
        shadowColor: Colors.black,
        child: TextFormField(
          controller: widget.controller,
          obscureText: widget.obscureText,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          keyboardType: widget.keyboardType,
          decoration: InputDecoration(
            label: Text(widget.label),
            errorStyle: const TextStyle(fontFamily: "Josefin"),
            prefixIcon: Icon(widget.icon),
            border: InputBorder.none,
            suffix: widget.isPassword
                ? Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: InkWell(
                      onTap: widget.onForgotTap,
                      child: BigText(
                        text: "FORGOT",
                        color: AppColors.mainYellow,
                        size: rValue(
                          context: context,
                          defaultValue: 10.0,
                          whenSmaller: 8.0,
                        ),
                      ),
                    ),
                  )
                : const Text(""),
            labelStyle: TextStyle(
              fontFamily: "Josefin",
              fontSize: rValue(
                context: context,
                defaultValue: 10.0,
                whenSmaller: 8.0,
              ),
              letterSpacing: 0.5,
              fontWeight: FontWeight.bold,
            ),
          ),
          focusNode: focusNode,
          cursorColor: Colors.white30,
          style: TextStyle(
            fontFamily: "Raleway",
            fontSize: rValue(
              context: context,
              defaultValue: 14.0,
              whenSmaller: 11.0,
            ),
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }
}
