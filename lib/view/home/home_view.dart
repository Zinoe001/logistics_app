import 'package:flutter/material.dart';
import 'package:logistics_app/core/utils/validators.dart';
import 'package:logistics_app/widgets/app_button.dart';
import 'package:logistics_app/widgets/app_textfield.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final TextEditingController _eController = TextEditingController();
  final TextEditingController _pController = TextEditingController();
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 45,
              ),
              AppTextField(
                title: 'Email',
                hintText: 'Sample@gmail.com',
                controller: _eController,
                focusNode: _emailFocusNode,
                validator: (value) => Validator.email(
                  _eController.text,
                ),
              ),
              const SizedBox(height: 10),
              AppTextField(
                title: 'Password',
                hintText: '*******',
                controller: _pController,
                focusNode: _passwordFocusNode,
                isPassword: true,
                validator: (value) => Validator.password(
                  _pController.text,
                ),
              ),
              const Spacer(),
              AppButton.primary(
                text: "Center",
                onTap: () {
                  if (!_formKey.currentState!.validate()) {
                    return;
                  }
                  print("validate");
                },
              ),
              const SizedBox(
                height: 45,
              ),
              AppButton.secondary(text: "center"),
              const SizedBox(
                height: 45,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
