import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:service_slot/routes/auto_router.gr.dart';
import 'package:service_slot/utils/utils.dart';
import 'package:service_slot/widgets/common/custom_app_bar.dart';
import 'package:service_slot/widgets/common/custom_button.dart';
import 'package:service_slot/widgets/common/custom_text_form_field.dart';

@RoutePage(name: 'SignUpScreen')
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late TextEditingController emailController,
      passwordController,
      confirmpasswordController,
      fullnameController;
  late String selectedMenu;

  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  
  @override
  void initState() {
    fullnameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmpasswordController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Signup'),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Form(
          key: _form,
          child: Column(
            children: [
              CustomTextFormField(
                controller: emailController,
                textInputAction: TextInputAction.next,
                validator: (email) => ValidationUtils.emailValidation(email),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                hintText: 'Email',
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextFormField(
                controller: fullnameController,
                textInputAction: TextInputAction.next,
                validator: (name) => ValidationUtils.fullNameValidation(name),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                hintText: 'Full name',
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextFormField(
                controller: passwordController,
                obscureText: true,
                textInputAction: TextInputAction.next,
                validator: (password) =>
                    ValidationUtils.passwordValidation(password),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                hintText: 'Password',
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextFormField(
                controller: confirmpasswordController,
                obscureText: true,
                textInputAction: TextInputAction.next,
                validator: (confirmPassword) =>
                    ValidationUtils.confirmPasswordValidation(
                        confirmPassword, passwordController.text),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                hintText: 'Confirm password',
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: CustomButton(
                    form: _form,
                    onPressed: () {
                      //TODO Sign up
                    },
                    label: "Sign up"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
