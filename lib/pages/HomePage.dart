import 'package:flutter/material.dart';
import 'package:pingui_app/components/event_card.dart';
import 'package:pingui_app/user/database.dart';
import 'package:pingui_app/user/session.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final session = context.watch<Session>();

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Inicio'),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('Hey César!',
                  style: Theme.of(context).textTheme.headlineLarge),
            ),
            SizedBox(
              height: 123,
              child: StreamBuilder(
                  stream: Database().getEvents().snapshots(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                          scrollDirection: Axis.horizontal,
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          shrinkWrap: true,
                          itemCount: snapshot.data!.docs.length,
                          itemBuilder: (context, index) => EventCard(
                              label: snapshot.data!.docs[index]['label'],
                              type: snapshot.data!.docs[index]['type'],
                              startsAt: snapshot.data!.docs[index]['startsAt'],
                              endsAt: snapshot.data!.docs[index]['endsAt']));
                    } else {
                      return const Center(child: CircularProgressIndicator());
                    }
                  }),
            )
          ],
        ));
  }
}
