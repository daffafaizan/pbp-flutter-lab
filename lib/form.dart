import 'package:counter_7/main.dart';
import 'package:flutter/material.dart';

class MyTambahPage extends StatefulWidget {
    const MyTambahPage({super.key});

    @override
    State<MyTambahPage> createState() => _MyTambahPageState();
}

class _MyTambahPageState extends State<MyTambahPage> {
    final _formKey = GlobalKey<FormState>();
    String _judul = "";
    String _nominal = "";
    String jenisBudget = 'Pilih Jenis';
    var listJenisBudget = ['Pilih Jenis', 'Pengeluaran', 'Pemasukan'];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Form Budget'),
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
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                decoration: InputDecoration(
                                    hintText: "Beli Thinkpad",
                                    labelText: "Judul",
                                    // Menambahkan circular border agar lebih rapi
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5.0),
                                    ),
                                ),
                                // Menambahkan behavior saat nama diketik 
                                onChanged: (String? value) {
                                    setState(() {
                                        _judul = value!;
                                    });
                                },
                                // Menambahkan behavior saat data disimpan
                                onSaved: (String? value) {
                                    setState(() {
                                        _judul = value!;
                                    });
                                },
                                // Validator sebagai validasi form
                                validator: (String? value) {
                                    if (value == null || value.isEmpty) {
                                        return 'Nama lengkap tidak boleh kosong!';
                                    }
                                    return null;
                                },
                                ),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
                                child: TextFormField(
                                decoration: InputDecoration(
                                    hintText: "10000",
                                    labelText: "Nominal",
                                    // Menambahkan circular border agar lebih rapi
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5.0),
                                    ),
                                ),
                                // Menambahkan behavior saat nama diketik 
                                onChanged: (String? value) {
                                    setState(() {
                                        _nominal = value!;
                                    });
                                },
                                // Menambahkan behavior saat data disimpan
                                onSaved: (String? value) {
                                    setState(() {
                                        _nominal = value!;
                                    });
                                },
                                // Validator sebagai validasi form
                                validator: (String? value) {
                                    if (value == null || value.isEmpty) {
                                        return 'Nama lengkap tidak boleh kosong!';
                                    }
                                    return null;
                                },
                                ),
                            ),
                            ListTile(
                                trailing: DropdownButton(
                                    value: jenisBudget,
                                    icon: const Icon(Icons.keyboard_arrow_down),
                                    items: listJenisBudget.map((String items) {
                                    return DropdownMenuItem(
                                        value: items,
                                        child: Text(items),
                                    );
                                    }).toList(),
                                    onChanged: (String? newValue) {
                                    setState(() {
                                        jenisBudget = newValue!;
                                    });
                                    },
                                ),
                            ),
                            TextButton(
                                child: const Text(
                                    "Simpan",
                                    style: TextStyle(color: Colors.white),
                                ),
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                                ),
                                onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                    showDialog(
                                        context: context,
                                        builder: (context) {
                                        return Dialog(
                                            shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            ),
                                            elevation: 15,
                                            child: Container(
                                            child: ListView(
                                                padding: const EdgeInsets.only(top: 20, bottom: 20),
                                                shrinkWrap: true,
                                                children: <Widget>[
                                                Center(child: const Text('Informasi Data')),
                                                SizedBox(height: 20),
                                                // TODO: Munculkan informasi yang didapat dari form
                                                TextButton(
                                                    onPressed: () {
                                                    Navigator.pop(context);
                                                    },
                                                    child: Text('Kembali'),
                                                ), 
                                                ],
                                            ),
                                            ),
                                        );
                                        },
                                    );
                                    }
                                },
                                ),
                        ],
                    ),
                ),
            ),
        );
    }
}

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
            body: Container(
                padding: const EdgeInsets.all(8.0), 
                child: Card(
                    child: const SizedBox(
                        width: 300,
                        height: 100,
                        child: Text('A card that can be tapped'),
                    ),
                ),
            ),
        );
    }
}