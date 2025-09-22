import 'dart:io';

void main() {
  while (true) {
    print("--- Menu Kalkulator BMI ---");
    print("1. Hitung BMI Baru");
    print("2. Tampilkan Riwayat");
    print("3. Keluar");
    stdout.write("Pilih menu (1/2/3): ");

    String? pilihan = stdin.readLineSync();

    switch (pilihan) {
      case '1':
        stdout.write('Masukkan tinggi badan (cm): ');
        String? inputTinggi = stdin.readLineSync();
        stdout.write('Masukkan berat badan (kg): ');
        String? inputBerat = stdin.readLineSync();

        try {
          double tinggi = double.parse(inputTinggi!);
          double berat = double.parse(inputBerat!);

          print(
            "✔️ Input valid! (Perhitungan akan diimplementasikan di branch selanjutnya)\n",
          );
        } catch (e) {
          print("❌ Error: Input tidak valid! Harap masukkan hanya angka.\n");
        }
        break;
      case '2':
        print("\nFitur ini akan diimplementasikan.\n");
        break;
      case '3':
        print("Terima kasih!");
        return;
      default:
        print("Pilihan tidak valid.");
    }
  }
}
