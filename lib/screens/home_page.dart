import 'package:flutter/material.dart';

import '../card_widget/card_list.dart';
import '../deposit/deposit.dart';
import 'investment.dart';
import 'last_investment.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF020063),
        leading: IconButton(
            icon: const Icon(Icons.menu), onPressed: () => print("menu")),
        actions: [
          IconButton(
              icon: const Icon(Icons.settings), onPressed: () => print("menu"))
        ],
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              color: const Color(0xFF020063),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 200,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Align(
                alignment: Alignment.topCenter,
                child: CardList(),
              ),
              LastInvestment(),
              const Deposits(),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Investment()),
                  );
                },
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color(0xFF24CCA7),
                  ),
                  width: MediaQuery.of(context).size.width - 50,
                  height: 50,
                  child: const Center(
                      child: Text(
                    "Go Invest",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  )),
                ),
              ),
              const SizedBox(
                height: 25,
              )
            ],
          ),
        ],
      ),
    );
  }
}

