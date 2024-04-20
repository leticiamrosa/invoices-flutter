import 'package:flutter/material.dart';

class PaymentMethods extends StatelessWidget {
  const PaymentMethods({Key? key}) : super(key: key);

  final spacingDefault = const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0);

  AlertDialog buildAlertDialog(BuildContext context) {
    Widget buttonSubmit = TextButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: const Text(
          'Continuar',
          textDirection: TextDirection.ltr,
        ));

    AlertDialog alert = AlertDialog(
      title: const Text(
        "Erro",
        textDirection: TextDirection.ltr,
      ),
      content: const Text(
        "Não implementado...",
        textDirection: TextDirection.ltr,
      ),
      actions: [buttonSubmit],
    );

    return alert;
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return buildAlertDialog(context);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
            child: Row(
              textDirection: TextDirection.ltr,
              children: const [
                Text(
                  'Formas de pagamento',
                  textDirection: TextDirection.ltr,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                )
              ],
            )),
        Padding(
            padding: spacingDefault,
            child: Row(
              textDirection: TextDirection.ltr,
              children: [
                Text(
                  'Boleto Bancário',
                  textDirection: TextDirection.ltr,
                  style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
                )
              ],
            )),
        Column(
          children: [
            Padding(
              padding: spacingDefault,
              child: SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'Copiar código de barras do boleto',
                        textDirection: TextDirection.ltr,
                      ),
                    ),
                    onPressed: () => openDialog(context)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
              child: SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'Enviar boleto por e-mail',
                        textDirection: TextDirection.ltr,
                      ),
                    ),
                    onPressed: () => openDialog(context)),
              ),
            )
          ],
        ),
        Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
            child: Row(
              textDirection: TextDirection.ltr,
              children: [
                Text(
                  'Cartão de Crédito',
                  textDirection: TextDirection.ltr,
                  style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
                )
              ],
            )),
        Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
          child: SizedBox(
            width: double.infinity,
            child: OutlinedButton(
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Pagar com cartão de crédito',
                    textDirection: TextDirection.ltr,
                  ),
                ),
                onPressed: () => openDialog(context)),
          ),
        )
      ],
    );
  }
}
