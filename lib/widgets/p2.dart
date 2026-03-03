import 'package:flutter/material.dart';

// --- PANTALLA 2: SELECCIÓN DE ESPECIALIDAD ---
class PantallaAgendaEspecialidad extends StatelessWidget {
  const PantallaAgendaEspecialidad({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(Icons.local_hospital, color: Colors.blue),
        title: const Text("Agenda Cita", style: TextStyle(color: Colors.black)),
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          _buildSpecialtyTile(context, "Consulta General", Icons.family_restroom, Colors.blue.shade400),
          _buildSpecialtyTile(context, "Pediatría", Icons.child_care, Colors.red.shade400),
          _buildSpecialtyTile(context, "Endocrinología", Icons.medication_liquid, Colors.blue.shade400),
        ],
      ),
    );
  }

  Widget _buildSpecialtyTile(BuildContext context, String title, IconData icon, Color color) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/pantalla3'),
      child: Container(
        margin: const EdgeInsets.only(bottom: 15),
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
        decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
            Icon(icon, color: Colors.white, size: 30),
          ],
        ),
      ),
    );
  }
}