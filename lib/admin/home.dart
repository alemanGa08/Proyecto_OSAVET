import 'package:flutter/material.dart';
import 'package:flutter_osavet_1/admin/addEvento.dart';
import 'package:flutter_osavet_1/admin/addnoticia.dart';
import 'package:flutter_osavet_1/usuarios/principalpage.dart';
import 'appointment.dart';
import 'medical_history.dart';
import 'billing.dart';
import 'pet_profile.dart';
import 'calendar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Veterinaria OSAVET"),
        backgroundColor: const Color(0xFFa7e3c1),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF59a68c),
              ),
              child: Text(
                'Opciones',
                style: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.calendar_today),
              title: const Text('Gestión de citas'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AppointmentScreen()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.history),
              title: const Text('Historial médico'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MedicalHistoryScreen()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.attach_money),
              title: const Text('Facturación'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const BillingScreen()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.pets),
              title: const Text('Perfil de mascotas'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PetProfileScreen()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.calendar_today),
              title: const Text('Calendario de vacunación'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const VaccinationCalendarScreen()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.add),
              title: const Text('Agregar Noticia'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AddNoticia()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.add),
              title: const Text('Agregar Evento'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AddEvento()),
                );
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Cerrar sesión'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PrincipalPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        color: const Color(0xFF59a68c),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Perfil del Administrador',
              style: TextStyle(
                color: Color(0xFF000000),
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            const Card(
              color: Color(0xFFffffff),
              child: ListTile(
                leading: Icon(Icons.person, color: Color.fromARGB(255, 0, 0, 0)),
                title: Text('Nombre del Administrador'),
                subtitle: Text('admin@osavet.com'),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton.icon(
              icon: const Icon(Icons.edit),
              label: const Text('Editar Perfil', style: TextStyle(color: Colors.black)),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFa7e3c1),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const EditProfileScreen()),
                );
              },
            ),
            const SizedBox(height: 20),
            Card(
              color: const Color(0xFFffffff),
              child: ListTile(
                leading: const Icon(Icons.analytics, color: Color(0xFFa7e3c1)),
                title: const Text('Estadísticas de Uso'),
                subtitle: const Text('Visualizar estadísticas de la aplicación'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const StatisticsScreen()),
                  );
                },
              ),
            ),
            const SizedBox(height: 10),
            Card(
              color: const Color(0xFFffffff),
              child: ListTile(
                leading: const Icon(Icons.settings, color: Color(0xFFa7e3c1)),
                title: const Text('Configuración'),
                subtitle: const Text('Ajustar configuraciones de la aplicación'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SettingsScreen()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Editar Perfil'),
        backgroundColor: const Color(0xFFa7e3c1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                labelText: 'Nombre',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Correo electrónico',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Guardar cambios del perfil
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFa7e3c1),
              ),
              child: const Text('Guardar', style: TextStyle(color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Estadísticas de Uso'),
        backgroundColor: const Color(0xFFa7e3c1),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        color: const Color(0xFF59a68c),
        child: ListView(
          children: const [
            Card(
              color: Color(0xFFffffff),
              child: ListTile(
                leading: Icon(Icons.calendar_today, color: Color.fromARGB(255, 0, 0, 0)),
                title: Text('Citas Programadas'),
                subtitle: Text('Total: 123\nEsta semana: 45\nHoy: 8'),
              ),
            ),
            SizedBox(height: 10),
            Card(
              color: Color(0xFFffffff),
              child: ListTile(
                leading: Icon(Icons.person_add, color: Color.fromARGB(255, 0, 0, 0)),
                title: Text('Nuevos Clientes'),
                subtitle: Text('Total: 50\nEsta semana: 10\nHoy: 2'),
              ),
            ),
            SizedBox(height: 10),
            Card(
              color: Color(0xFFffffff),
              child: ListTile(
                leading: Icon(Icons.pets, color: Color.fromARGB(255, 0, 0, 0)),
                title: Text('Nuevas Mascotas'),
                subtitle: Text('Total: 70\nEsta semana: 15\nHoy: 3'),
              ),
            ),
            SizedBox(height: 10),
            Card(
              color: Color(0xFFffffff),
              child: ListTile(
                leading: Icon(Icons.attach_money, color: Color.fromARGB(255, 0, 0, 0)),
                title: Text('Facturación'),
                subtitle: Text('Ingresos: \$5000\nEsta semana: \$1200\nHoy: \$300'),
              ),
            ),
            SizedBox(height: 10),
            Card(
              color: Color(0xFFffffff),
              child: ListTile(
                leading: Icon(Icons.notifications, color: Color.fromARGB(255, 0, 0, 0)),
                title: Text('Notificaciones Enviadas'),
                subtitle: Text('Total: 200\nEsta semana: 40\nHoy: 8'),
              ),
            ),
            SizedBox(height: 10),
            Card(
              color: Color(0xFFffffff),
              child: ListTile(
                leading: Icon(Icons.assessment, color: Color.fromARGB(255, 0, 0, 0)),
                title: Text('Tasa de Retención de Clientes'),
                subtitle: Text('80% de clientes recurrentes'),
              ),
            ),
            SizedBox(height: 10),
            Card(
              color: Color(0xFFffffff),
              child: ListTile(
                leading: Icon(Icons.vaccines, color: Color.fromARGB(255, 0, 0, 0)),
                title: Text('Vacunas Administradas'),
                subtitle: Text('Total: 150\nEsta semana: 20\nHoy: 5'),
              ),
            ),
            SizedBox(height: 10),
            Card(
              color: Color(0xFFffffff),
              child: ListTile(
                leading: Icon(Icons.feedback, color: Color.fromARGB(255, 0, 0, 0)),
                title: Text('Comentarios y Sugerencias'),
                subtitle: Text('Total: 30\nEsta semana: 5\nHoy: 1'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configuración'),
        backgroundColor: const Color(0xFFa7e3c1),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        color: const Color(0xFF59a68c),
        child: const Center(
          child: Text(
            'Aquí se podrán ajustar las configuraciones de la aplicación.',
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
