class Budget {
    String _judul = "";
    int? _nominal = 0;
    String _jenis;

    Budget(this._judul, this._nominal, this._jenis);

    String get getJudul {
        return _judul;
    }

    int? get getNominal {
        return _nominal;
    }

    String get getJenis {
        return _jenis;
    }
}

class ListBudget {
    static List<Budget> budget = [];
}