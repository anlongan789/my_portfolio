import 'package:flutter/material.dart';

class ContactBox extends StatelessWidget {
  final String icon;
  final String name;
  final String detail;
  const ContactBox({
    Key? key,
    required this.icon,
    required this.name,
    required this.detail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 50,
          height: 50,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Image(
            image: NetworkImage(
              icon,
            ),
            color: Theme.of(context).primaryColor,
          ),
        ),
        const SizedBox(width: 5),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            Text(detail),
          ],
        )
      ],
    );
  }
}
