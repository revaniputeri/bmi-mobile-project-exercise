class HasilBMI {
  final double tinggi;
  final double berat;
  final double bmi;
  final String kategori;

  HasilBMI({
    required this.tinggi,
    required this.berat,
    required this.bmi,
    required this.kategori,
  });

  @override
  String toString() {
    return "Tinggi: ${tinggi}cm, Berat: ${berat}kg -> BMI: ${bmi.toStringAsFixed(1)} (${kategori})";
  }
}

// 2. Fungsi yang Fokus untuk Menghitung dan Menentukan Kategori
HasilBMI hitungBMI(double tinggiCm, double beratKg) {
  double tinggiM = tinggiCm / 100;
  double bmi = beratKg / (tinggiM * tinggiM);
  String kategori = _tentukanKategori(bmi);

  return HasilBMI(
    tinggi: tinggiCm,
    berat: beratKg,
    bmi: bmi,
    kategori: kategori,
  );
}

// 3. Fungsi bantuan (helper function) 'private'
String _tentukanKategori(double bmi) {
  if (bmi < 18.5) {
    return "Kurus";
  } else if (bmi < 25) {
    return "Normal";
  } else if (bmi < 30) {
    return "Gemuk";
  } else {
    return "Obesitas";
  }
}

// 4. Fungsi yang Fokus untuk Menampilkan Riwayat
void tampilkanRiwayat(List<HasilBMI> riwayat) {
  print("\n--- Riwayat Perhitungan BMI ---");
  if (riwayat.isEmpty) {
    print("Belum ada riwayat perhitungan.");
  } else {
    for (var hasil in riwayat) {
      print(hasil);
    }
  }
  print("-----------------------------\n");
}