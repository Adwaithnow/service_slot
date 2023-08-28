import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:service_slot/models/home_menu_item_type.dart';
import 'package:service_slot/theme/values.dart';
import 'package:service_slot/utils/utils.dart';
import 'package:service_slot/widgets/common/custom_app_bar.dart';
import 'package:service_slot/widgets/common/custom_button.dart';
import 'package:service_slot/widgets/common/custom_text_form_field.dart';

@RoutePage(name: "AppointmentBookingScreen")
class AppointmentBookingScreen extends StatefulWidget {
  const AppointmentBookingScreen({super.key, this.menuItemType});
  final MenuItemType? menuItemType;

  @override
  State<AppointmentBookingScreen> createState() =>
      _AppointmentBookingScreenState();
}

class _AppointmentBookingScreenState extends State<AppointmentBookingScreen> {
  late TextEditingController fullNameController,
      phoneNumberController,
      addressController,
      pincodeController,
      remarkController;
  late String selectedMenu;

  final GlobalKey<FormState> _form = GlobalKey<FormState>();

  @override
  void initState() {
    selectedMenu =
        widget.menuItemType?.value ?? HomeScreenItems.menuItems[0].value;

    fullNameController = TextEditingController();
    phoneNumberController = TextEditingController();
    addressController = TextEditingController();
    pincodeController = TextEditingController();
    remarkController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    fullNameController.dispose();
    phoneNumberController.dispose();
    addressController.dispose();
    pincodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(
          title: "Booking",
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Form(
            key: _form,
            child: Column(
              children: [
                const SizedBox(
                  height: 5,
                ),
                DropdownButtonFormField(
                  icon: const Icon(
                    CupertinoIcons.chevron_down,
                  ),
                  value: selectedMenu,
                  decoration: InputDecoration(
                    labelText: "Service Type",
                    labelStyle: TextStyle(color: AppColors.primary),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.primary),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                  items: HomeScreenItems.menuItems
                      .map(
                        (menuItem) => DropdownMenuItem(
                          value: menuItem.value,
                          child: Text(menuItem.title),
                        ),
                      )
                      .toList(),
                  onChanged: (value) {
                    selectedMenu = value!;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextFormField(
                  controller: fullNameController,
                  textInputAction: TextInputAction.next,
                  validator: (name) => ValidationUtils.fullNameValidation(name),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  hintText: 'Full name',
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextFormField(
                  controller: phoneNumberController,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.phone,
                  hintText: "Phone number",
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (phoneNumber) =>
                      ValidationUtils.phoneNumberValidation(phoneNumber),
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
                  hintText: "Address",
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextFormField(
                  controller: pincodeController,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.number,
                  validator: (pincode) =>
                      ValidationUtils.pincodeValidation(pincode),
                  hintText: "Pincode",
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextFormField(
                  controller: remarkController,
                  textInputAction: TextInputAction.newline,
                  maxLines: 4,
                  keyboardType: TextInputType.multiline,
                  validator: (remark) =>
                      ValidationUtils.remarkValidation(remark),
                  hintText: "Remark",
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: CustomButton(
                    form: _form,
                    label: 'Add booking',
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
