import 'package:flutter/material.dart';

class InvoiceScreen extends StatefulWidget {
  InvoiceScreen({Key? key}) : super(key: key);

  @override
  State<InvoiceScreen> createState() => _InvoiceScreenState();
}

class _InvoiceScreenState extends State<InvoiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text('Invoce'),);
  }
}