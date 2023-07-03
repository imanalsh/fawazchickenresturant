import 'package:flutter/material.dart';

class MultiLanguage extends StatelessWidget {
  const MultiLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListView(
        children: [
          ExpansionTile(
            title: const Text('عربي'),
            children: [
              const Divider(
                color: Colors.grey,
              ),
              ElevatedButton(
                child: const Text('عربي'),
                onPressed: () {},
              ),
              const Divider(
                color: Colors.grey,
              ),
              ElevatedButton(
                child: const Text('كوردي'),
                onPressed: () {},
              ),
              const Divider(
                color: Colors.grey,
              ),
              ElevatedButton(
                child: const Text('English'),
                onPressed: () {},
              ),
              const SizedBox(
                height: 10,
                width: 50,
              )
            ],
          )
        ],
      ),
    );
  }
}
