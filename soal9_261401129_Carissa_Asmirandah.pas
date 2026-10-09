program Soal9;
uses crt;

var
  tahun, bulan, Hari: integer;
  cihuy: boolean;

begin
  clrscr;
  writeln('=== PENENTUAN JUMLAH HARI PADA BULAN ===');
  write('Masukkan Tahun: ');
  readln(tahun);
  write('Masukkan Nomor Bulan (1-12): ');
  readln(bulan);

  if ((tahun mod 400 = 0) or ((tahun mod 4 = 0) and (tahun mod 100 <> 0))) then
    cihuy := true
  else
    cihuy := false;

  case bulan of
    1, 3, 5, 7, 8, 10, 12: Hari := 31;
    4, 6, 9, 11: Hari := 30;
    2: begin
         if cihuy then
           Hari := 29
         else
           Hari := 28;
       end;
  else
    writeln('Nomor bulan tidak valid!');
    readln;
    halt;
  end;

  writeln;
  if cihuy then
    writeln('Tahun ', tahun, ' adalah Tahun Kabisat.')
  else
    writeln('Tahun ', tahun, ' BUKAN Tahun Kabisat.');

  writeln('Jumlah hari pada bulan ke-', bulan, ' adalah: ', Hari, ' hari.');
  readln;
end.