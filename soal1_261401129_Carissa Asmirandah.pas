program Soal1;
uses crt;

var
    i, n, buku, jenis: integer;
    harga, total, diskon, totaljenis, totalbayar: real;

begin
clrscr;
  writeln('~ TOKO BUKU MINE (Self Service) ~');

  writeln(#10'Daftar Buku : ');
  writeln('1. Buku Komik');
  writeln('2. Buku Novel');
  writeln('3. Buku Anak');
  writeln('4. Buku Pengembangan Diri');
  writeln('5. Alkitab');
  writeln('6. Al-Quran');

  writeln;
  write('Berapa jenis buku yang ingin dibeli? ');
  readln(jenis);

  total := 0;

  // ulang pertanyaan untuk setiap jenis buku yang diinput
  for i := 1 to jenis do
  begin
    writeln;
    writeln('--- Input Jenis Buku Ke-', i, ' ---');
    write('Pilih Kode Buku (1-6): ');
    readln(buku);

    write('Masukkan Jumlah buku : ');
    readln(n);

    write('Masukkan Harga Satuan: Rp');
    readln(harga);

    // Hitung subtotal jenis buku dan akumulasi ke total
    totalJenis := n * harga;
    total := total + totalJenis;

    writeln('-> Subtotal jenis buku ini: Rp', totalJenis:0:2);
  end;

  // Perhitungan Diskon
  if total >= 500000 then
    diskon := 0.20 * total
  else if total >= 100000 then
    diskon := 0.10 * total
  else
    diskon := 0;

  totalBayar := total - diskon;

  // Rincian Belanja Akhir
  writeln;
  writeln('====================================');
  writeln('===       RINCIAN BELANJA        ===');
  writeln('====================================');
  writeln('Total Sebelum Diskon : Rp', total:0:2);
  writeln('Besar Diskon         : Rp', diskon:0:2);
  writeln('Total Bayar Akhir    : Rp', totalBayar:0:2);
  readln;
end.