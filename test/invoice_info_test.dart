import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:invoices/src/features/payments/presentation/widgets/invoice_info.dart';

void main() {
  testWidgets('InvoiceInfo Widget Test', (WidgetTester tester) async {
    // when
    await tester.pumpWidget(const InvoiceInfo());
    final title = find.text('Última fatura');
    final value = find.text('R\$ 3.024,50');
    final paymentDue = find.text('Vencimento 08/07/2019');
    final tag = find.text('Vencida');

    // then
    expect(title, findsOneWidget);
    expect(value, findsOneWidget);
    expect(paymentDue, findsOneWidget);
    expect(tag, findsOneWidget);
  });
}
