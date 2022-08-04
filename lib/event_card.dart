import 'package:flutter/material.dart';
import 'package:inherited_widget_demo/event_provider.dart';
import 'package:inherited_widget_demo/stars_average.dart';

class EventCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final event = EventProvider.of(context)!.event;
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
            StarAverage(),
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
