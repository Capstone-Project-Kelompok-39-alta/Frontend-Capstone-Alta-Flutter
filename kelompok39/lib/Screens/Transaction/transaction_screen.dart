import 'package:flutter/material.dart';
import 'package:kelompok39/components/search_widget.dart';
import 'package:kelompok39/constants.dart';

class TransactionScreen extends StatefulWidget {
  TransactionScreen({Key? key}) : super(key: key);

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Expanded(
                child: Row(
              children: [
                OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_drop_down_outlined,
                      ),
                      Text("All Status")
                    ],
                  ),
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0)),
                    primary: cPrimary1,
                    side: BorderSide(color: cPrimary1)
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_drop_down_outlined,
                      ),
                      Text("All Date")
                    ],
                  ),
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0)),
                    primary: cPrimary1,
                    side: BorderSide(color: cPrimary1)
                  ),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
