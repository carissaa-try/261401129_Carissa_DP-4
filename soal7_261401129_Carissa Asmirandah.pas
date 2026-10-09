program Soal7;
uses crt;

var
  kode: char;
  jam: integer;
  tarif: longint;

begin
  clrscr;
  writeln('=== HITUNG TARIF PARKIR ===');
  writeln('M : Mobil');
  writeln('K : Motor');
  writeln('B : Bus');
  write('Masukkan Kode Kendaraan (M/K/B): ');
  readln(kode);
  write('Masukkan Lama Parkir (jam)     : ');
  readln(jam);

  kode := upcase(kode);

  case kode of
    'M': begin
           if jam > 10 then
             tarif := 30000
           else if jam > 1 then
             tarif := 5000 + (jam - 1) * 3000
           else
             tarif := 5000;
         end;
    'K': begin
           if jam > 10 then
             tarif := 10000
           else if jam > 1 then
             tarif := 2000 + (jam - 1) * 1000
           else
             tarif := 2000;
         end;
    'B': begin
           if jam > 10 then
             tarif := 50000
           else if jam > 1 then
             tarif := 10000 + (jam - 1) * 5000
           else
             tarif := 10000;
         end;
  else
    writeln('Kode kendaraan tidak valid!');
    readln;
    halt;
  end;

  writeln;
  writeln('Total Tarif Parkir: Rp', tarif);
  readln;
end.