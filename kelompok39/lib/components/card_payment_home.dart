import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kelompok39/constants.dart';

class CardPaymentHome extends StatelessWidget {
  CardPaymentHome({
    required this.title,
    required this.no,
    required this.amount,
    required this.logo,
    required this.date,
  });

  final String title;
  final String amount;
  final String logo;
  final String date;
  final String no;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: MediaQuery.of(context).size.width,
      height: 128,
      decoration: BoxDecoration(
        color: cLight1,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.6),
            offset: const Offset(
              0.0,
              10.0,
            ),
            blurRadius: 10.0,
            spreadRadius: -6.0,
          ),
        ],
      ),
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: NetworkImage(logo),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          title,
                          style: GoogleFonts.nunito(
                            color: cDark1,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 13.5,),
                    Text(
                      no,
                      style: GoogleFonts.nunito(
                        color: cDark1,
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      date,
                      style: GoogleFonts.nunito(
                        color: cDark4,
                        fontWeight: FontWeight.w300,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 50,
              ),
              Text(
                "Rp " + amount,
                style: GoogleFonts.nunito(
                  color: cDark1,
                  fontWeight: FontWeight.w600,
                  fontSize: 17,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
