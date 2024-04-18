import 'package:flutter/material.dart';

class InvoiceInfo extends StatelessWidget {
  const InvoiceInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
          child: Row(
            children: const [
              Text(
                'Ultima fatura',
                textDirection: TextDirection.ltr,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              )
            ],
          )),
      Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 4.0),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  textDirection: TextDirection.ltr,
                  children: const [
                    Text(
                      'R 3.024,50',
                      textDirection: TextDirection.ltr,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Text(
                      'Vencimento 08/07/2019',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                )
              ],
            ),
            Expanded(
                child: Column(
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
        child: Divider(
          height: 2,
          color: Colors.black,
        ),
      )
    ]);
  }
}
