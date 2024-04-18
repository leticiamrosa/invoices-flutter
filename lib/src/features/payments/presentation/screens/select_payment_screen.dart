import 'package:flutter/material.dart';
import 'package:invoices/src/features/payments/presentation/widgets/payment_card_content.dart';

class SelectPaymentScreen extends StatelessWidget {
  const SelectPaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sistema de Faturas',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Sistema de Faturas'),
        ),
        body: const PaymentCardContent(),
      ),
    );
  }
}
