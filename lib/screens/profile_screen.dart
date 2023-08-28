import 'dart:math';

import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:service_slot/routes/auto_router.gr.dart';
import 'package:service_slot/utils/utils.dart';
import 'package:service_slot/widgets/common/custom_app_bar.dart';
import 'package:service_slot/widgets/common/custom_avatar.dart';
import 'package:service_slot/widgets/common/custom_button.dart';
import 'package:service_slot/widgets/common/custom_text_form_field.dart';

@RoutePage(name: "ProfileScreen")
class ProfileScreeen extends StatefulWidget {
  const ProfileScreeen({super.key});

  @override
  State<ProfileScreeen> createState() => _ProfileScreeenState();
}

class _ProfileScreeenState extends State<ProfileScreeen> {
  late TextEditingController emailController,
      passwordController,
      addressController,
      fullnameController;
  final GlobalKey<FormState> _form = GlobalKey<FormState>();

  @override
  void initState() {
    fullnameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    addressController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Profile"),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Form(
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: CircleAvatarWidget(
                  avatarRadius: 50,
                  avatarBorderRadius: 62,
                  imageUrl: "https://picsum.photos/seed/picsum/200/300",
                  avatarBackgroundColor:
                      HomeScreenUtils.getCardColor(Random().nextInt(12)),
                ),
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
                controller: addressController,
                maxLines: 4,
                textInputAction: TextInputAction.newline,
                validator: (address) =>
                    ValidationUtils.addressValidation(address),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                hintText: 'Address',
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: CustomButton(
                    form: _form,
                    onPressed: () {
                      //TODO Update
                    },
                    label: "Update"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {
                        context.router.push(const AboutScreen());
                      },
                      child: const Text("About"))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
