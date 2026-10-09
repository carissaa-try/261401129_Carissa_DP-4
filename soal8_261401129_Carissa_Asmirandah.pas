program Soal8;
uses crt;

var
  gol: char;
  Jam, Lembur: integer;
  Pokok, gaji, bonus, total: longint;

begin
  clrscr;
  writeln('~ PROGRAM PENGHITUNG GAJI KARYAWAN ~');
  writeln('A : gaji Rp1.500.000 ');
  writeln('B : gaji Rp2.000.000 ');
  writeln('C : gaji Rp2.500.000 ');
  write('Masukkan Golongan Karyawan (A/B/C): ');
  readln(gol);

  write('Masukkan Total Jam Kerja (per minggu): ');
  readln(Jam);

  gol := upcase(gol);

  case gol of
    'A': Pokok := 2500000;
    'B': Pokok := 3000000;
    'C': Pokok := 3500000;
  else
    writeln('Golongan tidak valid!');
    readln;
    halt;
  end;

  if Jam > 40 then
    Lembur := Jam - 40
  else
    Lembur := 0;

  gaji := Lembur * 20000;

  if (gol = 'C') and (Jam > 50) then
    bonus := 100000
  else
    bonus := 0;

  total := Pokok + gaji + bonus;

  writeln;
  writeln('~ RINCIAN GAJI KARYAWAN ~');
  writeln('Gaji Pokok       : Rp', Pokok);
  writeln('Gaji Lembur      : Rp', gaji, ' (', Lembur, ' jam)');
  writeln('Bonus Tambahan   : Rp', bonus);
  writeln('Total Gaji Akhir : Rp', total);
  readln;
end.