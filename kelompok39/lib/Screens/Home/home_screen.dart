import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:kelompok39/Screens/Profile/profile_screen.dart';
import 'package:kelompok39/components/card_payment_home.dart';
import 'package:kelompok39/constants.dart';
import 'package:kelompok39/model/ModelPaymentH/paymentModel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      minimum: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.blue,
                backgroundImage: AssetImage('assets/img/Mark PP.png'),
                maxRadius: 30,
              ),
              Text("Hallo Mark!",
                  style: GoogleFonts.nunito(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: cDark1)),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/icons/IconDark1Black/Name=Bell.svg'),
              )
            ],
          ),
          SizedBox(height: 16),
          Text(
            'don’t forget to pay your invoices!',
            style: GoogleFonts.nunito(
              fontSize: 13,
              fontWeight: FontWeight.w300,
              color: cDark4,
            ),
          ),
          SizedBox(height: 48),
          Text(
            'Invoices to Pay',
            style: GoogleFonts.nunito(
              fontSize: 17,
              fontWeight: FontWeight.w700,
              color: cDark1,
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: paymentModels.length,
                itemBuilder: (context, index) {
                  return CardPaymentHome(
                    amount: paymentModels[index].harga,
                    date: paymentModels[index].date,
                    logo: paymentModels[index].logo,
                    no: paymentModels[index].no,
                    title: paymentModels[index].name,
                  );
                }),
          ),
          SizedBox(height: 48),
          Text(
            'Recent Payment',
            style: GoogleFonts.nunito(
              fontSize: 17,
              fontWeight: FontWeight.w700,
              color: cDark1,
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: paymentModels.length,
                itemBuilder: (context, index) {
                  return CardPaymentHome(
                    amount: paymentModels[index].harga,
                    date: paymentModels[index].date,
                    logo: paymentModels[index].logo,
                    no: paymentModels[index].no,
                    title: paymentModels[index].name,
                  );
                }),
          ),
        ],
      ),
    ));
  }
}
