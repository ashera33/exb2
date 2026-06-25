import 'package:flutter/material.dart';
import '../../data/datasources/appwrite_datasource.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final datasource = AppwriteDatasource();
  late Future mesas;

  @override
  void initState() {
    super.initState();
    mesas = datasource.getMesas();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Mesas Electorales")),
      body: FutureBuilder(
        future: mesas,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          final data = snapshot.data as List;

          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, i) {
              final mesa = data[i];

              return ListTile(
                title: Text("Mesa ${mesa['numero']}"),
                subtitle: Text(mesa['recinto']),
              );
            },
          );
        },
      ),
    );
  }
}