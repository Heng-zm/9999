import 'package:flutter/material.dart';
import 'package:learnapp/wedgets/button.dart';
import 'package:learnapp/wedgets/logo.dart';

class Homepagesceen extends StatelessWidget {

  const Homepagesceen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar,
      backgroundColor: Colors.white,
      drawer: Drawer(),
      body: _buildBody,
    );
  }
  AppBar get _buildAppBar {
    return AppBar(
      backgroundColor: Color(0xff005d86),
      title: abalogo,
      actions: [
        IconButton(
          icon: Icon(Icons.notifications_none_outlined , color: Colors.white, size: 28.0),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.phone_callback_sharp, color: Colors.white, size: 25),
          onPressed: () {},
        ),

      ],
    );
  }

  Widget get _buildBody {
    return Container(

      child: Column(
        children: [
          Flexible(flex:3, child: Container(
            decoration: BoxDecoration(gradient:  RadialGradient(colors: [
              Colors.white,
              Color(0xFF0D47A1),
            ])),
            child: GridView.count(crossAxisCount:3,
              crossAxisSpacing: 1.0,
              mainAxisSpacing: 1.0,
              children: [
                MenuButton(icon: Icons.account_balance_wallet, label: "Account"),
                MenuButton(icon: Icons.credit_card_rounded, label: "Account"),
                MenuButton(icon: Icons.payments_outlined, label: "Account"),
                MenuButton(icon: Icons.newspaper, label: "Account"),
                MenuButton(icon: Icons.local_atm, label: "Account"),
                MenuButton(icon: Icons.compare_arrows_sharp, label: "Account"),
                MenuButton(icon: Icons.qr_code_scanner, label: "Account"),
                MenuButton(icon: Icons.add_card_sharp, label: "Account"),
                MenuButton(icon: Icons.location_on_rounded, label: "Account"),

              ],

            ),
              )),
          Flexible(flex:1, child: Container(
            padding: const EdgeInsets.only(left: 20.0),
            width: double.infinity,
            color: Color(0xff00bcd5),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Text("Quick Trasfer", style: TextStyle(color: Colors.white, fontSize: 19.0),),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text("Create you templates to make transfer \nquicker",
                  style: TextStyle(color: Colors.white, fontSize: 13),)
                ],
              )
            ],
          ),
          )),
          Flexible(flex:1, child: Container(
            padding: const EdgeInsets.only(left: 20.0),
            width: double.infinity,
            color: Color(0xffee534f),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Text("Quick Payment", style: TextStyle(color: Colors.white, fontSize: 19.0),),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text("Paying your bills with templates is faster ",
                      style: TextStyle(color: Colors.white, fontSize: 13),)
                  ],
                )
              ],
            ),
          )),

        ],
      ),
    );
    
  }
}
