import 'package:flutter/material.dart';

class MybookPage extends StatefulWidget {
  const MybookPage({super.key});

  @override
  State<MybookPage> createState() => _MybookPageState();
}

class _MybookPageState extends State<MybookPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Mybook Page"));
  }
}
