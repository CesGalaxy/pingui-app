import 'package:flutter/material.dart';
import 'package:pingui_app/user/session.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final session = context.watch<Session>();

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Profile'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 300,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ListTile(
                        leading: const Icon(Icons.person_rounded),
                        title: const Text('Name'),
                        subtitle: Text(session.user.displayName ?? "No name"),
                      ),
                      ListTile(
                        leading: const Icon(Icons.email_rounded),
                        title: const Text('Email'),
                        subtitle: Text(session.user.email ?? "No email"),
                      ),
                      ListTile(
                        leading: const Icon(Icons.phone_rounded),
                        title: const Text('Phone'),
                        subtitle: Text(session.user.phoneNumber ?? "No phone"),
                      ),
                      ListTile(
                        title: const Text('UID'),
                        subtitle: Text(session.user.uid),
                      ),
                    ],
                  ),
                ),
              )),
              const Spacer(),
              Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Theme.of(context).colorScheme.outline,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 300,
                    height: 200,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Text(session.user.toString()),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
