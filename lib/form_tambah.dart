import 'package:counter_7/main.dart';
import 'package:counter_7/form_data.dart';
import 'package:counter_7/model.dart';
import 'package:flutter/material.dart';

class MyTambahPage extends StatefulWidget {
    const MyTambahPage({super.key});

    @override
    State<MyTambahPage> createState() => _MyTambahPageState();
}

class _MyTambahPageState extends State<MyTambahPage> {
    final _formKey = GlobalKey<FormState>();
    String _judul = "";
    int? _nominal = 0;
    String _jenis = 'Pilih Jenis';
    var listJenis = ['Pilih Jenis', 'Pengeluaran', 'Pemasukan'];

    final judulText = TextEditingController();
    final nominalText = TextEditingController();

    void clearText(){ //https://www.geeksforgeeks.org/clear-textfield-in-flutter/
        judulText.clear();
        nominalText.clear();
    }    

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
                        children: [
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                controller: judulText,
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
                                controller: nominalText,
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
                                        _nominal = int.tryParse(value!);
                                    });
                                },
                                // Menambahkan behavior saat data disimpan
                                onSaved: (String? value) {
                                    setState(() {
                                        _nominal = int.tryParse(value!);
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
                                    value: _jenis,
                                    icon: const Icon(Icons.keyboard_arrow_down),
                                    items: listJenis.map((String items) {
                                    return DropdownMenuItem(
                                        value: items,
                                        child: Text(items),
                                    );
                                    }).toList(),
                                    onChanged: (String? newValue) {
                                    setState(() {
                                        _jenis = newValue!;
                                    });
                                    },
                                ),
                            ),
                        ],
                    ),
                ),
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
            floatingActionButton: Padding(
                padding: const EdgeInsets.all(30.0),
                child: TextButton(
                child: const Text(
                    "Simpan",
                    style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                ),
                onPressed: () {
                    if (_formKey.currentState!.validate() != null) {
                        ListBudget.budget.add(Budget(_judul, _nominal, _jenis!));
                        clearText();
                    }
                },
                ),
            ),
        );
    }
}