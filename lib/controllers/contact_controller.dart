import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/state_manager.dart';

class ContactController extends GetxController {
  final GlobalKey<FormState> contactFormKey = GlobalKey<FormState>();
  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController messageController;

  var name = '';
  var email = '';
  var message = '';
  var errorString = "".obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    nameController = TextEditingController();
    emailController = TextEditingController();
    messageController = TextEditingController();
  }

  @override
  void onClose() {
    nameController.dispose();
    emailController.dispose();
    messageController.dispose();
    super.onClose();
  }

  String? validateName(String value) {
    if (value.isEmpty) {
      return "Name is required!";
    }
    return null;
  }

  String? validateEmail(String value) {
    if (value.isEmpty || !value.contains("@")) {
      return "Email cannot be empty or invalid!";
    }
    return null;
  }

  String? validateMessage(String value) {
    if (value.isEmpty) {
      return "Message is required!";
    }
    return null;
  }

  void sendMessage() async {
    final isValid = contactFormKey.currentState!.validate();
    if (!isValid) {
      return null;
    }
    final Email email = Email(
      body: messageController.text,
      recipients: ["anphuong1501@gmail.com"],
      subject: "from ${emailController.text}",
      isHTML: false,
    );
    await FlutterEmailSender.send(email);

    Fluttertoast.showToast(
        msg: "A message has been sent!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.grey,
        textColor: Colors.white,
        fontSize: 10.0);
  }
}
