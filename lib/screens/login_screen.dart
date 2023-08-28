import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:service_slot/routes/auto_router.gr.dart';
import 'package:service_slot/utils/utils.dart';
import 'package:service_slot/widgets/common/custom_app_bar.dart';
import 'package:service_slot/widgets/common/custom_button.dart';
import 'package:service_slot/widgets/common/custom_text_form_field.dart';

@RoutePage(name: 'LoginScreen')
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
      appBar: const CustomAppBar(title: 'Login'),
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
                controller: passwordController,
                textInputAction: TextInputAction.next,
                validator: (name) => ValidationUtils.fullNameValidation(name),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                hintText: 'Password',
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: CustomButton(
                    form: _form,
                    onPressed: () {
                      AutoRouter.of(context).replace(const HomeScreen());
                    },
                    label: "Login"),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  TextButton(
                      onPressed: () {
                        context.router.push(const SignUpScreen());
                      },
                      child: const Text("Sign up"))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
