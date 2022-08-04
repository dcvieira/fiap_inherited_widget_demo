import 'package:flutter/material.dart';
import 'package:inherited_widget_demo/model/event.dart';
import 'package:inherited_widget_demo/model/stars_average.dart';

class EventCard extends StatelessWidget {
  final Event event;
  const EventCard({required this.event});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      child: Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              event.title,
              style: Theme.of(context).textTheme.headline5,
            ),
            const Divider(),
            Text(
              event.description,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            const SizedBox(
              height: 10,
            ),
            StarAverage(rate: event.rate),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    child: const Text('Detalhes'),
                    onPressed: () {},
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
