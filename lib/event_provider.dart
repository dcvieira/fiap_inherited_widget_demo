import 'package:flutter/cupertino.dart';
import 'package:inherited_widget_demo/model/event.dart';

class EventProvider extends InheritedWidget {
  final Event event;

  EventProvider({required Widget child, required this.event})
      : super(child: child);

  static EventProvider? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<EventProvider>();

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }
}
