import 'package:counter_7/main.dart';
import 'package:counter_7/page/form_tambah.dart';
import 'package:counter_7/page/form_watchlist.dart';
import 'package:counter_7/model/model_budget.dart';
import 'package:flutter/material.dart';

class MyDataPage extends StatefulWidget {
    const MyDataPage({super.key});

    @override
    State<MyDataPage> createState() => _MyDataPageState();
}

class _MyDataPageState extends State<MyDataPage> {
    final List<Budget> budgetData = ListBudget.budget;
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
                    ListTile(
                    title: const Text('My Watch List'),
                    onTap: () {
                        // Route menu ke halaman form_data
                        Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const MyWatchListPage()),
                        );
                    },
                    ),
                ],
                ),
            ),
            body: Center(
                child: Column(
                    children: budgetData.isNotEmpty ? 
                    budgetData.map((budget) => Container(
                        child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: SizedBox(
                                height: 100,
                                child: Container(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                        children: [
                                            Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                    Text(
                                                        budget.getJudul,
                                                        style: const TextStyle(fontSize: 30),
                                                    ),
                                                ],
                                            ),
                                            Spacer(),
                                            Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                    Text(
                                                        budget.getNominal.toString(),
                                                        style: const TextStyle(fontSize: 15),
                                                    ),
                                                    Text(
                                                        budget.getJenis,
                                                        style: const TextStyle(fontSize: 20),
                                                    ),
                                                ],
                                            )
                                        ],
                                    ),
                                ),
                            ),
                        )
                    )).toList() : [
                        Center(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                ]
                            )
                        )
                    ]
                ),
            ),
        );
    }
}