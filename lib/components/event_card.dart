import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  const EventCard(
      {Key? key,
      required this.label,
      required this.type,
      required this.startsAt,
      required this.endsAt})
      : super(key: key);

  final String label;
  final String type;
  final String startsAt;
  final String endsAt;

  static Map<String, Icon> event_icon = {
    'exam': const Icon(Icons.edit_document),
    'class': const Icon(Icons.school),
    'homework': const Icon(Icons.assignment),
    'other': const Icon(Icons.event)
  };

  static Map<String, String> event_type = {
    'exam': 'Examen',
    'class': 'Clase',
    'homework': 'Tarea',
    'other': 'Otro'
  };

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 123,
      width: 240,
      child: Card(
        color: Theme.of(context).colorScheme.surfaceVariant,
        child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              // Align at top
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                event_icon[type] ?? const Icon(Icons.event),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(label,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500)),
                    Text(event_type[type] ?? "Otro",
                        style:
                            const TextStyle(fontSize: 16, color: Colors.grey)),
                    Text('${startsAt} - ${endsAt}',
                        style:
                            const TextStyle(fontSize: 16, color: Colors.grey)),
                  ],
                )
              ],
            )),
      ),
    );
  }
}
