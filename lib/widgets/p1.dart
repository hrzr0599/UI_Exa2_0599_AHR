import 'package:flutter/material.dart';

// --- PANTALLA 1: INICIO ---
class PantallaInicio extends StatelessWidget {
  const PantallaInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 220, 233, 255),
        title: const Text("Bienvenido, \n Hernandez Roman", style: TextStyle(fontSize: 16)),
        actions: [
          const CircleAvatar(
            backgroundImage: NetworkImage('https://raw.githubusercontent.com/hrzr0599/imagenes-para-fluter-6-I-11-Feb-26/refs/heads/main/familyAHR.jpg'),
          ),
          const SizedBox(width: 10),
          const Icon(Icons.notifications),
          const SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildSquareButton(Icons.description, "Tus recetas", Colors.blue.shade100),
                _buildSquareButton(Icons.medication, "Disponibilidad de\nmedicamentos", Colors.red.shade100),
              ],
            ),
            const SizedBox(height: 30),
            _buildWideButton(Icons.watch, "Conecta tu reloj inteligente", Colors.blue.shade50),
            const SizedBox(height: 15),
            _buildWideButton(Icons.medical_services, "Nuestro equipo", Colors.red.shade50, isProfile: true),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 220, 233, 255),
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person_add), label: ''),
        ],
        onTap: (index) {
          if (index == 1) Navigator.pushNamed(context, '/pantalla2');
        },
      ),
    );
  }

  Widget _buildSquareButton(IconData icon, String text, Color color) {
    return Container(
      width: 140,
      height: 140,
      decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(15), border: Border.all(color: Colors.black12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 50, color: Colors.black87),
          const SizedBox(height: 10),
          Text(text, textAlign: TextAlign.center, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
        ],
      ),
    );
  }

  Widget _buildWideButton(IconData icon, String text, Color color, {bool isProfile = false}) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(15), border: Border.all(color: Colors.black12)),
      child: Row(
        children: [
          if (isProfile)
            const CircleAvatar(radius: 20, backgroundImage: NetworkImage('https://raw.githubusercontent.com/hrzr0599/imagenes-para-fluter-6-I-11-Feb-26/refs/heads/main/doctor1.jfif'))
          else
            Icon(icon, size: 30),
          const SizedBox(width: 20),
          Expanded(child: Text(text, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500))),
          const Icon(Icons.arrow_forward_ios, size: 16),
        ],
      ),
    );
  }
}