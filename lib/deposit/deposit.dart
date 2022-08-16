import 'package:flutter/material.dart';

import 'widget/deposit_item.dart';

class Deposits extends StatelessWidget {
  const Deposits({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 10, left: 35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Deposits",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            textAlign: TextAlign.start,
          ),
          const SizedBox(
            height: 15,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  margin: const EdgeInsets.only(right: 15),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 0.2),
                      borderRadius:
                      const BorderRadius.all(Radius.circular(10))),
                  child: const Center(
                      child: Text(
                        "+",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                ),
                const DepositItem(
                  name: "Fast Invest",
                  detail: "7.5% per month",
                  icon: Icon(
                    Icons.bar_chart,
                    color: Colors.blue,
                  ),
                ),
                const DepositItem(
                  name: "daily Invest",
                  detail: "0.5% per month",
                  icon: Icon(
                    Icons.bar_chart,
                    color: Colors.greenAccent,
                  ),
                ),
                const DepositItem(
                  name: "monthly Invest",
                  detail: "6.5% per month",
                  icon: Icon(
                    Icons.bar_chart,
                    color: Colors.orangeAccent,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
