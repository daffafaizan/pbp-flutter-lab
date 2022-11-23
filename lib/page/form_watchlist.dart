import 'package:counter_7/main.dart';
import 'package:counter_7/page/form_tambah.dart';
import 'package:counter_7/page/form_data.dart';
import 'package:counter_7/page/watchlist_details.dart';
import 'package:counter_7/model/model_watchlist.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/material.dart';

class Details {
  static late Fields _getFields;
  static Fields get fetcher => _getFields;
  static String status = "✗";

  static String showStatus() {
    if (_getFields.watched == "Sudah") {
      status = "✓";
    }
    return status;
  }
}

class MyWatchListPage extends StatefulWidget {
    const MyWatchListPage({Key? key}) : super(key: key);

    @override
    _MyWatchListPageState createState() => _MyWatchListPageState();
}

class _MyWatchListPageState extends State<MyWatchListPage> {
    Future<List<Mywatchlist>> fetchWatchList() async {
        var url = Uri.parse('http://pbp-website.herokuapp.com/mywatchlist/json/');
        var response = await http.get(
        url,
        headers: {
            "Access-Control-Allow-Origin": "*",
            "Content-Type": "application/json",
        },
        );

        // melakukan decode response menjadi bentuk json
        var data = jsonDecode(utf8.decode(response.bodyBytes));

        // melakukan konversi data json menjadi object Mywatchlist
        List<Mywatchlist> WatchList = [];
        for (var d in data) {
        if (d != null) {
            WatchList.add(Mywatchlist.fromJson(d));
        }
        }

        return WatchList;
    }

    @override
    Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('My Watch List'),
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
        body: FutureBuilder(
            future: fetchWatchList(),
            builder: (context, AsyncSnapshot snapshot) {
                if (snapshot.data == null) {
                return const Center(child: CircularProgressIndicator());
                } else {
                if (!snapshot.hasData) {
                    return Column(
                    children: const [
                        Text(
                        "Tidak ada to do list :(",
                        style: TextStyle(
                            color: Color(0xff59A5D8),
                            fontSize: 20),
                        ),
                        SizedBox(height: 8),
                    ],
                    );
                } else {
                    return ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (_, index)=> Container(
                        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                        padding: const EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.circular(15.0),
                            boxShadow: const [
                            BoxShadow(
                                color: Colors.black,
                                blurRadius: 2.0
                            )
                            ]
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                TextButton(
                                  onPressed: () {
                                    Details._getFields = snapshot.data![index].fields;
                                    print(Details.fetcher.toString());
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => WatchListDetails()),
                                    );
                                  },
                                  child: Text(
                                  "${snapshot.data![index].fields.title}",
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.pink,
                                  ),
                                  )
                                ),
                                const SizedBox(height: 10),
                            ],
                        ),
                        )
                    );
                }
                }
            }
        )
    );
    }
}