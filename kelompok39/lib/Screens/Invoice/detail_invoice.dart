import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kelompok39/constants.dart';

class DetailInvoice extends StatelessWidget {
  DetailInvoice({
    required this.title,
    required this.type,
    required this.status,
    required this.no,
    required this.amount,
    required this.logo,
    required this.date,
    required this.username,
    required this.userid,
  });

  final String title;
  final String type;
  final String status;
  final String username;
  final String userid;
  final String amount;
  final String logo;
  final String date;
  final String no;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: EdgeInsets.symmetric(vertical: 24, horizontal: 32),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                        'assets/icons/IconDark1Black/Name=Arrow Left.svg')),
              ),
              Text(
                "Invoice",
                style: GoogleFonts.nunito(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
              IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                      'assets/icons/IconDark1Black/Name=Bell.svg')),
            ],
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundColor: cPrimary2,
                backgroundImage: NetworkImage(logo),
                maxRadius: 30,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.nunito(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: cDark1),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    type,
                    style: GoogleFonts.nunito(
                        fontSize: 13,
                        fontWeight: FontWeight.w300,
                        color: cDark1),
                  ),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(cLight2),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(cPrimary1),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16)))),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Paid",
                          style: GoogleFonts.nunito(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ])),
            ],
          ),
          SizedBox(height: 53),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Invoice',
                style: GoogleFonts.nunito(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: cDark1,
                ),
              ),
              Text(
                no,
                style: GoogleFonts.nunito(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: cDark1,
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Divider(
            color: cDark5,
            height: 1,
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Customer ID',
                style: GoogleFonts.nunito(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: cDark1,
                ),
              ),
              Text(
                userid,
                style: GoogleFonts.nunito(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: cDark1,
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Divider(
            color: cDark5,
            height: 1,
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Bill to',
                style: GoogleFonts.nunito(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: cDark1,
                ),
              ),
              Text(
                username,
                style: GoogleFonts.nunito(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: cDark1,
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Divider(
            color: cDark5,
            height: 2,
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Amount Due',
                style: GoogleFonts.nunito(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: cDark3,
                ),
              ),
              Text(
                'Rp' + amount,
                style: GoogleFonts.nunito(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: cDark3,
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Divider(
            color: cDark5,
            height: 2,
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Payment Due',
                style: GoogleFonts.nunito(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: cDark3,
                ),
              ),
              Text(
                date,
                style: GoogleFonts.nunito(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: cDark3,
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Divider(
            color: cDark5,
            height: 2,
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total Amount',
                style: GoogleFonts.nunito(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: cDark1,
                ),
              ),
              Text(
                'Rp' + amount,
                style: GoogleFonts.nunito(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: cDark1,
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          SizedBox(
            height: 35,
          ),
          Center(
            child: Container(
              width: 73,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18), color: cPrimary1),
              alignment: Alignment.center,
              child: Text(
                "Done",
                style: GoogleFonts.nunito(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: cLight1,
                ),
              ),
            ),
          ),
        ],
      ),
    )));
  }
}
