program Soal4;
uses crt;

var
  pilih: integer;
  a, b: integer;
  ulang: char;

begin
  repeat
    clrscr;
    writeln('KALKULATOR Mine');
    writeln('1. Penjumlahan');
    writeln('2. Pengurangan');
    writeln('3. Perkalian');
    writeln('4. Pembagian Real');
    writeln('5. DIV & MOD');
    write('Pilih operasi (1-5): ');
    readln(pilih);

    write('Masukkan angka pertama : ');
    readln(a);
    write('Masukkan angka kedua   : ');
    readln(b);

    case pilih of
      1: writeln('Hasil: ', a, ' + ', b, ' = ', (a + b));
      2: writeln('Hasil: ', a, ' - ', b, ' = ', (a - b));
      3: writeln('Hasil: ', a, ' * ', b, ' = ', (a * b));
      4: begin
           if b <> 0 then
             writeln('Hasil: ', a, ' / ', b, ' = ', (a / b):0:2)
           else
             writeln('Error: Pembagian dengan nol tidak diperbolehkan!');
         end;
      5: begin
           if b <> 0 then
             writeln('Hasil: ', a, ' DIV ', b, ' = ', (a div b),
                     ' | MOD = ', (a mod b))
           else
             writeln('Error: Pembagian dengan nol tidak diperbolehkan!');
         end;
    else
      writeln('Pilihan tidak valid!');
    end;

    writeln;
    write('Apakah ingin melakukan perhitungan lagi? (Y/T): ');
    readln(ulang);
  until (ulang = 'T') or (ulang = 't');
end.