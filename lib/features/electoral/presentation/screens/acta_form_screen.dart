import 'package:flutter/material.dart';
import '../../data/datasources/appwrite_datasource.dart';

class ActaFormScreen extends StatefulWidget {
  const ActaFormScreen({super.key});

  @override
  State<ActaFormScreen> createState() => _ActaFormScreenState();
}

class _ActaFormScreenState extends State<ActaFormScreen> {
  final datasource = AppwriteDatasource();

  String? fileId;
  bool loading = false;

  Future<void> saveActa() async {
    setState(() => loading = true);

    try {
      // 🔴 SIMULACIÓN (aquí conectas cámara real luego)
      String fakeImagePath = "/tmp/image.jpg";

      fileId = await datasource.uploadImage(fakeImagePath);

      await datasource.saveActa({
        'mesa_id': '123',
        'mesa_numero': '01',
        'votos_emitidos': 100,
        'votos_nulos': 2,
        'votos_en_blanco': 1,
        'foto_file_id': fileId,
        'estado': 'enviada',
      });

      if (!mounted) return;

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Acta guardada")),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Error: $e")),
      );
    }

    setState(() => loading = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Acta")),
      body: Center(
        child: ElevatedButton(
          onPressed: loading ? null : saveActa,
          child: Text(loading ? "Guardando..." : "Guardar Acta"),
        ),
      ),
    );
  }
}