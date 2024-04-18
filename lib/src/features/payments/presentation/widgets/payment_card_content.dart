import 'package:flutter/material.dart';
import 'package:invoices/src/features/payments/presentation/widgets/invoice_info.dart';

class PaymentCardContent extends StatelessWidget {
  const PaymentCardContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            margin: const EdgeInsets.all(16.0),
            child: Card(
                elevation: 16,
                child: Column(
                  children: const [InvoiceInfo()],
                ))));
  }
}
