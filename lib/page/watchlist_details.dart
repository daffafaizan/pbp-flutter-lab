import 'package:flutter/material.dart';
import 'package:counter_7/model/model_watchlist.dart';
import 'package:counter_7/page/form_watchlist.dart';
import 'package:counter_7/page/form_tambah.dart';
import 'package:counter_7/page/form_data.dart';
import 'package:counter_7/main.dart';

class WatchListDetails extends StatefulWidget {
  WatchListDetails({Key? key}) : super(key: key);

  @override
  State<WatchListDetails> createState() => WatchListStateDetails();
}

class WatchListStateDetails extends State<WatchListDetails> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Watchlist Details'),
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
        body: 
        Align(
          alignment: Alignment.center,
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              Details.fetcher.title,
              style: const TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text("Release Date : " + Details.fetcher.releaseDate, style: const TextStyle(fontSize: 24)),
            Text("Rating : " + Details.fetcher.rating.toString(), style: const TextStyle(fontSize: 24)),
            Text("Watched : " + Details.showStatus(), style: const TextStyle(fontSize: 24)),
            Text("Review : " + Details.fetcher.review, style: const TextStyle(fontSize: 24)),
            FloatingActionButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Back", style: const TextStyle(fontSize: 18)),
            )
          ],
        ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}