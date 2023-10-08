// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:fasopay/pages/setting_page.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class CompteCartePage extends StatelessWidget {
  const CompteCartePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 128, 33, 243),
        title: const Text('Comptes Et Cartes'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Retour'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 121, 30, 233),
        child: const Icon(
          Icons.monetization_on,
          size: 36,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MyApp()),
                    );
                  },
                  icon: Icon(
                    Icons.home,
                    size: 36,
                    color: Colors.pink[200],
                  )),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SettingPage()),
                    );
                  },
                  icon: const Icon(
                    Icons.settings,
                    size: 36,
                    color: Colors.grey,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
