import 'package:flutter/material.dart';

class HitmanSeriesScreen extends StatefulWidget {
  const HitmanSeriesScreen({super.key});

  @override
  State<HitmanSeriesScreen> createState() => _HitmanSeriesScreenState();
}

class _HitmanSeriesScreenState extends State<HitmanSeriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios_outlined),
        ),
        title: Text("Hitman Series"),
        centerTitle: true,
      ),
      body: Expanded(
        child: ListView.builder(itemBuilder: (context, index) {
          return Column(
            children: [],
          );
        }),
      ),
    );
  }
}
