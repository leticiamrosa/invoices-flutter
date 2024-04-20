import 'package:flutter/material.dart';

class InvoiceInfo extends StatelessWidget {
  const InvoiceInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(textDirection: TextDirection.ltr, children: [
      Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
          child: Row(
            textDirection: TextDirection.ltr,
            children: const [
              Text(
                'Última fatura',
                textDirection: TextDirection.ltr,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              )
            ],
          )),
      Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 4.0),
        child: Row(
          textDirection: TextDirection.ltr,
          children: [
            Column(
              textDirection: TextDirection.ltr,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  textDirection: TextDirection.ltr,
                  children: const [
                    Text(
                      'R\$ 3.024,50',
                      textDirection: TextDirection.ltr,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ],
                ),
                Row(
                  textDirection: TextDirection.ltr,
                  children: [
                    Text(
                      'Vencimento 08/07/2019',
                      textDirection: TextDirection.ltr,
                      style:
                          TextStyle(fontSize: 16, color: Colors.grey.shade600),
                    ),
                  ],
                )
              ],
            ),
            Expanded(
                child: Column(
              textDirection: TextDirection.ltr,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text(
                  'Vencida',
                  textDirection: TextDirection.ltr,
                  style: TextStyle(fontSize: 16, color: Colors.red),
                ),
              ],
            ))
          ],
        ),
      ),
      const Padding(
          padding: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 4.0),
          child: Directionality(
            textDirection: TextDirection.ltr,
            child: Divider(
              height: 2,
              color: Colors.black,
            ),
          ))
    ]);
  }
}
