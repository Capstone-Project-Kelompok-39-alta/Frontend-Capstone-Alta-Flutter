import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kelompok39/constants.dart';

class CardInvoice extends StatelessWidget {
  CardInvoice({
    required this.title,
    required this.no,
    required this.amount,
    required this.logo,
    required this.date2,
  });

  final String amount;
  final String date2;
  final String logo;
  final String no;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
        width: MediaQuery.of(context).size.width,
        height: 111,
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
                  SizedBox(
                    height: 10,
                  ),
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
                    "Due is the " + date2 + " of every month",
                    style: GoogleFonts.nunito(
                      color: cDark4,
                      fontWeight: FontWeight.w300,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
