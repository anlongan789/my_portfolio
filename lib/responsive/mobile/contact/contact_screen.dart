// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/controllers/contact_controller.dart';
import 'package:get/get.dart';

import '../../../widgets/contact_box.dart';

class MobileContact extends StatelessWidget {
  const MobileContact({super.key});

  @override
  Widget build(BuildContext context) {
    var contactController = Get.put(ContactController());
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Contact me",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 10),
          const ContactBox(
              icon: "https://img.icons8.com/?size=512&id=61845&format=png",
              name: "Address",
              detail: "84/8 Nguyen Van Nghi, Ward 5, Go Vap District"),
          const SizedBox(height: 20),
          const ContactBox(
              icon: "https://img.icons8.com/?size=512&id=78382&format=png",
              name: "Phone",
              detail: "(+84) 397436107"),
          const SizedBox(height: 20),
          const ContactBox(
              icon: "https://img.icons8.com/?size=512&id=60688&format=png",
              name: "Email",
              detail: "anphuong1501@gmail.com"),
          const SizedBox(height: 20),
          // Form(
          //   key: contactController.contactFormKey,
          //   autovalidateMode: AutovalidateMode.onUserInteraction,
          //   child: Column(
          //     children: [
          //       Container(
          //         padding:
          //             const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          //         decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(10),
          //             color: Colors.grey[300]),
          //         child: TextFormField(
          //           controller: contactController.nameController,
          //           onSaved: (value) {
          //             contactController.name = value!;
          //           },
          //           validator: (value) {
          //             return contactController.validateName(value!);
          //           },
          //           decoration: const InputDecoration(
          //             border: InputBorder.none,
          //             hintText: "Name",
          //           ),
          //         ),
          //       ),
          //       const SizedBox(height: 10),
          //       Container(
          //         padding:
          //             const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          //         decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(10),
          //             color: Colors.grey[300]),
          //         child: TextFormField(
          //           controller: contactController.emailController,
          //           onSaved: (value) {
          //             contactController.email = value!;
          //           },
          //           validator: (value) {
          //             return contactController.validateEmail(value!);
          //           },
          //           decoration: const InputDecoration(
          //             border: InputBorder.none,
          //             hintText: "Email",
          //           ),
          //         ),
          //       ),
          //       const SizedBox(height: 10),
          //       Container(
          //         padding:
          //             const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          //         decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(10),
          //             color: Colors.grey[300]),
          //         child: TextFormField(
          //           controller: contactController.messageController,
          //           onSaved: (value) {
          //             contactController.message = value!;
          //           },
          //           validator: (value) {
          //             return contactController.validateMessage(value!);
          //           },
          //           maxLines: 4,
          //           decoration: const InputDecoration(
          //             border: InputBorder.none,
          //             hintText: "Message",
          //           ),
          //         ),
          //       ),
          //       const SizedBox(height: 10),
          //       InkWell(
          //         onTap: () {
          //           contactController.sendMessage();
          //         },
          //         child: Container(
          //           width: double.infinity,
          //           padding: const EdgeInsets.all(10),
          //           decoration: BoxDecoration(
          //               color: Theme.of(context).primaryColor,
          //               borderRadius: BorderRadius.circular(10)),
          //           child: Center(
          //             child: Text(
          //               "Send Message",
          //               style: Theme.of(context).textTheme.bodyMedium!.copyWith(
          //                   color: Colors.white, fontWeight: FontWeight.bold),
          //             ),
          //           ),
          //         ),
          //       )
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}
