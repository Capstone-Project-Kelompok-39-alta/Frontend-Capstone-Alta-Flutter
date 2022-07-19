import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kelompok39/components/card_payment.dart';
import 'package:kelompok39/components/search_widget.dart';
import 'package:kelompok39/constants.dart';
import 'package:kelompok39/model/ModelPaymentH/paymentModel.dart';
import 'package:provider/provider.dart';

class TransactionScreen extends StatefulWidget {
  TransactionScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  DateTime date = DateTime(2022, 8, 24);
  late List<PaymentModel> payments;
  String query ='';

 @override
 void iniState(){
  super.initState();
  payments = paymentModels;
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            buildSearch(),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      showBottomSheet(
                          context: context,
                          builder: (context) {
                            return Wrap(
                              children: [
                                ListTile(
                                  title: Text("All Transaction Status"),
                                  trailing: Icon(Icons.arrow_forward_ios_sharp),
                                ),
                                ListTile(
                                  title: Text("All Processed Transactions"),
                                  trailing: Icon(Icons.arrow_forward_ios_sharp),
                                  onTap: () {
                                    showBottomSheet(
                                        context: context,
                                        builder: (context) {
                                          return Wrap(children: [
                                            ListTile(
                                              title: Text("Success"),
                                              trailing: Icon(Icons
                                                  .arrow_forward_ios_sharp),
                                            ),
                                            ListTile(
                                              title: Text("Process"),
                                              trailing: Icon(Icons
                                                  .arrow_forward_ios_sharp),
                                            ),
                                            ListTile(
                                              title: Text("Failed"),
                                              trailing: Icon(Icons
                                                  .arrow_forward_ios_sharp),
                                            ),
                                          ]);
                                        });
                                  },
                                ),
                              ],
                            );
                          });
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_drop_down_outlined,
                        ),
                        Text(
                          "All Status",
                          style: GoogleFonts.nunito(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                    style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0)),
                        primary: cPrimary1,
                        side: BorderSide(color: cPrimary1)),
                  ),
                  OutlinedButton(
                    onPressed: () async {
                      DateTime? newDate = await showDatePicker(
                          context: context,
                          initialDate: date,
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2100));
                      if (newDate == null) return;
                      setState(() {
                        date = newDate;
                      });
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_drop_down_outlined,
                        ),
                        Text("All Date",
                            style: GoogleFonts.nunito(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                            ))
                      ],
                    ),
                    style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0)),
                        primary: cPrimary1,
                        side: BorderSide(color: cPrimary1)),
                  ),
                ],
              ),
            Expanded(
              child: ListView.builder(
                  itemCount: paymentModels.length,
                  itemBuilder: (context, index) {
                    return 
                      CardPayment(
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
      ),
    );
  }

  Widget buildSearch() => SearchWidget(
        text: query,
        hintText: 'Search Payments',
        onChanged: searchPayment,
      );

  void searchPayment(String query){
    final payments = paymentModels.where((payments) {
      final titleLower = payments.name.toLowerCase();
      final authorLower = payments.no.toLowerCase();
      final searchLower = query.toLowerCase();

      return titleLower.contains(searchLower) ||
          authorLower.contains(searchLower);
    }).toList();

    setState(() {
      this.query = query;
      this.payments = payments;
    });
  }
  }

