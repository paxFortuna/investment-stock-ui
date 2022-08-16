
import 'package:flutter/material.dart';

class DepositItem extends StatelessWidget {
  final String name;
  final Icon icon;
  final String detail;

  const DepositItem({
    Key? key,
    required this.name,
    required this.icon,
    required this.detail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 50,
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 0.2),
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          icon,
          const Text(
            "|",
            style: TextStyle(fontSize: 20, color: Colors.grey),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                detail,
                style: const TextStyle(color: Colors.black54),
              ),
            ],
          )
        ],
      ),
    );
  }
}
