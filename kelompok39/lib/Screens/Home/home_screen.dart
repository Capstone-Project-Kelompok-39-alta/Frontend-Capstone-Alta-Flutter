import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:kelompok39/Screens/Invoice/detail_invoice.dart';
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  'assets/img/Mark PP.png',
                  fit: BoxFit.cover,
                  width: 40,
                  height: 40,
                ),
              ),
              
              Text("Hallo, Mark!",
                  style: GoogleFonts.nunito(
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                      color: cDark1)),
              SizedBox(
                width: 16
              ),
              SizedBox(
                width: 16
              ),
              SizedBox(
                width: 16
              ),
              SizedBox(
                width: 16
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                    'assets/icons/IconDark1Black/Name=Bell.svg'),
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
                  return GestureDetector(
                      child: CardPaymentHome(
                        amount: paymentModels[index].harga,
                        date: paymentModels[index].date,
                        logo: paymentModels[index].logo,
                        no: paymentModels[index].no,
                        title: paymentModels[index].name,
                      ),
                      onTap: () => {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailInvoice(
                                          title: 'Perusahaan Listrik Negara',
                                          type: 'Tagihan Listrik',
                                          status: 'Paid',
                                          no: '#001',
                                          userid: '5136123123123',
                                          username: 'Mark Sanchez',
                                          amount: '701.431',
                                          date: '20 Agustus 2022',
                                          logo:
                                              'https://upload.wikimedia.org/wikipedia/id/thumb/5/55/BNI_logo.svg/1200px-BNI_logo.svg.png',
                                        )))
                          });
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
