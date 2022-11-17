import 'package:flutter/material.dart';
import 'package:myprofile/components/customShape.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomPaint(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              ),
              painter: HeaderCurvedContainer(),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'Profile',
                    style: TextStyle(
                      fontSize: 35.0,
                      letterSpacing: 1.5,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  height: MediaQuery.of(context).size.width / 2,
                  padding: const EdgeInsets.all(10.0),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://user-images.githubusercontent.com/83684256/201591830-83d711e1-f50e-4926-9f69-6c389ca469cf.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Raka Abdi Reza Maulana Putra",
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                const Text(
                  "Kab Bandung, Indonesia",
                  style: TextStyle(fontSize: 15.0),
                ),
                const SizedBox(height: 5),
                const ListTile(
                  leading: Icon(Icons.email),
                  title: Text("Email"),
                  subtitle: Text("Rakaabdirmp@gmail.com"),
                ),
                const Divider(),
                const ListTile(
                  leading: Icon(Icons.phone),
                  title: Text("Phone"),
                  subtitle: Text("+62 8954 1618 7586"),
                ),
                const Divider(),
                const ListTile(
                  leading: Icon(Icons.location_on_rounded),
                  title: Text("Address"),
                  subtitle: Text(
                    "Jln.Sadang No.43 Margahayu Tengah",
                  ),
                ),
                const Divider(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
