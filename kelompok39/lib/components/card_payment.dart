import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kelompok39/constants.dart';

class CardPayment extends StatelessWidget {
  CardPayment({
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
      margin: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
      width: MediaQuery.of(context).size.width,
      height: 163,
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
      child: Stack(children: [
        Column(
          children: [
            Padding(
              padding: EdgeInsets.all(14),
              child: Row(
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
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(title,
                          style: GoogleFonts.nunito(
                            color: cDark1,
                            fontSize: 15,
                          )),
                      Text(
                        no,
                        style: GoogleFonts.nunito(
                          color: cDark1,
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: Text("Proses",
                        style: GoogleFonts.nunito(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        )),
                    style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0)),
                        primary: cPrimary1,
                        side: BorderSide(color: cPrimary1)),
                  ),
                ],
              ),
            ),
            Divider(
              color: cLight5,
              height: 1,
            ),
            Row(
              children: [
                Column(
                  children: [Text(date), Text('Total Harga'), Text(amount)],
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Text("Proses",
                      style: GoogleFonts.nunito(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      )),
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0)),
                      primary: cLight1,
                      backgroundColor: cPrimary1,
                      side: BorderSide(color: cPrimary1)),
                ),
              ],
            )
          ],
        )
      ]),
    );
  }
}
