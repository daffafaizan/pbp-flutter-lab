import 'package:counter_7/main.dart';
import 'package:counter_7/form_tambah.dart';
import 'package:flutter/material.dart';

class MyDataPage extends StatefulWidget {
    const MyDataPage({super.key});

    @override
    State<MyDataPage> createState() => _MyDataPageState();
}

class _MyDataPageState extends State<MyDataPage> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Data Budget'),
            ),
            drawer: Drawer(
                child: Column(
                children: [
                    // Menambahkan clickable menu
                    ListTile(
                    title: const Text('Counter'),
                    onTap: () {
                        // Route menu ke halaman utama
                        Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const MyHomePage()),
                        );
                    },
                    ),
                    ListTile(
                    title: const Text('Tambah Budget'),
                    onTap: () {
                        // Route menu ke halaman form_tambah
                        Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const MyTambahPage()),
                        );
                    },
                    ),
                    ListTile(
                    title: const Text('Data Budget'),
                    onTap: () {
                        // Route menu ke halaman form_data
                        Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const MyDataPage()),
                        );
                    },
                    ),
                ],
                ),
            ),
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                        Text('Hello World!'),
                    ],
                ),
            ),
        );
    }
}