import 'package:flutter_test/flutter_test.dart';
import 'package:invoices/src/features/payments/presentation/widgets/payment_methods.dart';

void main() {
  testWidgets('PaymentMethods Widget Test', (WidgetTester tester) async {
    // when
    await tester.pumpWidget(const PaymentMethods());
    final title = find.text('Formas de pagamento');
    final optionOne = find.text('Boleto Bancário');
    final optionTwo = find.text('Copiar código de barras do boleto');
    final optionThree = find.text('Enviar boleto por e-mail');
    final optionFour = find.text('Cartão de Crédito');
    final optionFifth = find.text('Pagar com cartão de crédito');

    // then
    expect(title, findsOneWidget);
    expect(optionOne, findsOneWidget);
    expect(optionTwo, findsOneWidget);
    expect(optionThree, findsOneWidget);
    expect(optionFour, findsOneWidget);
    expect(optionFifth, findsOneWidget);
  });
}
