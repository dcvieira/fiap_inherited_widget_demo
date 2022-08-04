import 'package:flutter/material.dart';
import 'package:inherited_widget_demo/event_provider.dart';

class StarAverage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final event = EventProvider.of(context)!.event;
    int avg = (_sumRate(event.rate) / event.rate.length).floor();
    List<bool> stars = [false, false, false, false, false];

    for (int i = 0; i < avg; i++) {
      stars[i] = true;
    }

    return Row(
      children: [
        Icon(
          stars[0] ? Icons.star : Icons.star_border,
          color: Colors.amber,
        ),
        Icon(stars[1] ? Icons.star : Icons.star_border, color: Colors.amber),
        Icon(stars[2] ? Icons.star : Icons.star_border, color: Colors.amber),
        Icon(stars[3] ? Icons.star : Icons.star_border, color: Colors.amber),
        Icon(stars[4] ? Icons.star : Icons.star_border, color: Colors.amber),
      ],
    );
  }

  int _sumRate(List<int> rate) {
    int sum = 0;
    for (var r in rate) {
      sum += r;
    }
    return sum;
  }
}
