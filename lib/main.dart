import 'package:flutter/material.dart';
import 'package:layout1/form.dart';
import 'package:layout1/home.dart';
import 'package:layout1/resetpass.dart';
import 'package:layout1/signin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 19, 137, 235)),
        useMaterial3: false,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const MyHomePage(title: "Home"),
        "/login": (context) => const Login(),
        "/signup": (context) => const SignUp(),
        "/resetpass": (context) => const ResetPass()
      },
    );
  }
}

Widget _buildListOfStudents() {
  return Container(
    margin: const EdgeInsets.fromLTRB(8, 12, 8, 8),
    child: ListView(
      children: [
        _buildStudent("Sebastiao Afonso Domingos",
            "domingossebastiao@gmail.com", Icons.person),
        _buildStudent("Sebastiao Afonso Domingos",
            "domingossebastiao@gmail.com", Icons.person),
        _buildStudent("Sebastiao Afonso Domingos",
            "domingossebastiao@gmail.com", Icons.person),
        _buildStudent("Sebastiao Afonso Domingos",
            "domingossebastiao@gmail.com", Icons.person),
        _buildStudent("Sebastiao Afonso Domingos",
            "domingossebastiao@gmail.com", Icons.person),
        _buildStudent("Sebastiao Afonso Domingos",
            "domingossebastiao@gmail.com", Icons.person),
        _buildStudent("Sebastiao Afonso Domingos",
            "domingossebastiao@gmail.com", Icons.person),
        _buildStudent("Sebastiao Afonso Domingos",
            "domingossebastiao@gmail.com", Icons.person),
        _buildStudent("Sebastiao Afonso Domingos",
            "domingossebastiao@gmail.com", Icons.person),
      ],
    ),
  );
}

Widget _buildStudent(String name, String email, IconData icon) {
  return Card(
    shadowColor: Colors.black12,
    color: Colors.brown[5],
    shape: const BeveledRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(4))),
    child: ListTile(
      title: Text(name),
      subtitle: Text(email),
      leading: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black12, width: 1),
            borderRadius: BorderRadius.circular(100)),
        padding: const EdgeInsets.all(5),
        child: Icon(
          icon,
          color: Colors.blue,
        ),
      ),
      contentPadding: const EdgeInsets.fromLTRB(14, 5, 14, 5),
    ),
  );
}

Widget _buildGrid() => GridView.extent(
    maxCrossAxisExtent: 150,
    padding: const EdgeInsets.all(2),
    mainAxisSpacing: 2,
    crossAxisSpacing: 2,
    children: _buildGridTileList(8));

// The images are saved with names pic0.jpg, pic1.jpg...pic29.jpg.
// The List.generate() constructor allows an easy way to create
// a list when objects have a predictable naming pattern.
List<Container> _buildGridTileList(int count) => List.generate(
    count, (i) => Container(child: Image.asset('images/pat${i + 1}.jpg')));

Widget _buildList() {
  return ListView(
    children: [
      _tile('CineArts at the Empire', '85 W Portal Ave', Icons.theaters),
      _tile('The Castro Theater', '429 Castro St', Icons.theaters),
      _tile('Alamo Drafthouse Cinema', '2550 Mission St', Icons.theaters),
      _tile('Roxie Theater', '3117 16th St', Icons.theaters),
      _tile('United Artists Stonestown Twin', '501 Buckingham Way',
          Icons.theaters),
      _tile('AMC Metreon 16', '135 4th St #3000', Icons.theaters),
      const Divider(),
      _tile('K\'s Kitchen', '757 Monterey Blvd', Icons.restaurant),
      _tile('Emmy\'s Restaurant', '1923 Ocean Ave', Icons.restaurant),
      _tile('Chaiya Thai Restaurant', '272 Claremont Blvd', Icons.restaurant),
      _tile('La Ciccia', '291 30th St', Icons.restaurant),
    ],
  );
}

ListTile _tile(String title, String subtitle, IconData icon) {
  return ListTile(
    title: Text(
      title,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
    ),
    subtitle: Text(
      subtitle,
    ),
    leading: Icon(
      icon,
      color: Colors.blue[500],
    ),
  );
}

Widget _buildStack() {
  return Stack(
    alignment: const Alignment(0.6, 0.6),
    children: [
      const CircleAvatar(
        backgroundImage: AssetImage("images/pat1.jpg"),
        radius: 100,
      ),
      Container(
          decoration: const BoxDecoration(color: Colors.black45),
          child: const Text(
            "Sebastiao",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ))
    ],
  );
}

Widget _buildCard() {
  return Container(
    padding: const EdgeInsets.all(8),
    child: SizedBox(
      height: 210,
      child: Card(
        child: Column(
          children: [
            ListTile(
              title: const Text(
                "1625 Main Streel",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              leading: Icon(
                Icons.restaurant_menu,
                color: Colors.blue[500],
              ),
            ),
            ListTile(
              title: const Text(
                "122 4555 33",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              leading: Icon(
                Icons.contact_phone,
                color: Colors.blue[500],
              ),
            ),
            ListTile(
              title: const Text(
                "esdfsd@sfdsdf.com",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              leading: Icon(
                Icons.email,
                color: Colors.blue[500],
              ),
            )
          ],
        ),
      ),
    ),
  );
}

Widget _buildHList() {
  return ListView(
    // This next line does the trick.
    scrollDirection: Axis.horizontal,
    children: <Widget>[
      Container(
        width: 160,
        color: Colors.red,
      ),
      Container(
        width: 160,
        color: Colors.blue,
      ),
      Container(
        width: 160,
        color: Colors.green,
      ),
      Container(
        width: 160,
        color: Colors.yellow,
      ),
      Container(
        width: 160,
        color: Colors.orange,
      ),
    ],
  );
}
