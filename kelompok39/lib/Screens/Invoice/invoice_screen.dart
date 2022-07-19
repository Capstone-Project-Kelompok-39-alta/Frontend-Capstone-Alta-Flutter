import 'package:flutter/material.dart';
import 'package:kelompok39/components/card_invoice.dart';
import 'package:kelompok39/components/search_widget.dart';
import 'package:kelompok39/model/ModelPaymentH/paymentModel.dart';

class InvoiceScreen extends StatefulWidget {
  InvoiceScreen({Key? key}) : super(key: key);

  @override
  State<InvoiceScreen> createState() => _InvoiceScreenState();
}

class _InvoiceScreenState extends State<InvoiceScreen> {
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
            Expanded(
              child: ListView.builder(
                  itemCount: paymentModels.length,
                  itemBuilder: (context, index) {
                    return 
                      CardInvoice (
                        amount: paymentModels[index].harga,
                        date2: paymentModels[index].date2,
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