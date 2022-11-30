import 'package:firebase_app_bloc/widgets/stateless/common_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../assets/assets_path.dart';
import '../../../widgets/stateless/common_avatar.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({
    Key? key,
    this.suffixIcon,
    //this.controller,
    this.focusNode,
    this.errorText,
    this.inputFormatters,
    this.onChange,
    this.onSubmit,
  }) : super(key: key);

  //final TextEditingController? controller;
  final FocusNode? focusNode;
  final String? errorText;
  final List<TextInputFormatter>? inputFormatters;
  final ValueChanged<String>? onChange, onSubmit;
  final Widget? suffixIcon;

  @override
  _PasswordTextFieldState createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  late bool _obscureText = true;
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CommonTextField(
      errorText: widget.errorText,
      controller: _passwordController,
      hintText: 'Enter your password',
      label: 'Password',
      focusNode: widget.focusNode,
      prefixIcon: const Align(
        widthFactor: 0.5,
        heightFactor: 0.5,
        child: CustomAvatar(
          width: 15,
          height: 16,
          assetName: AssetPath.iconLock,
        ),
      ),
      inputFormatters: widget.inputFormatters,
      onChange: widget.onChange,
      onSubmit: widget.onSubmit,
      obscureText: _obscureText,
      suffix: _passwordController.text.isEmpty
          ? Container(width: 0)
          : Align(
              widthFactor: 0.5,
              heightFactor: 0.5,
              child: _passwordController.text.isNotEmpty
                  ? CustomAvatar(
                      width: 20,
                      height: 15,
                      assetName: _obscureText
                          ? AssetPath.iconEye
                          : AssetPath.iconHideEye,
                      onTap: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    )
                  : const Text(''),
            ),
    );
  }
}
