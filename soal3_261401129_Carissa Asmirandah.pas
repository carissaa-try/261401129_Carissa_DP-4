program Soal3;
uses crt;

var
  n, kategori, i: integer;

begin
clrscr;

    write('Masukkan nilai N: '); readln(n);
    writeln('Pilih Kategori Deret:');   writeln('1. Ganjil');
                                        writeln('2. Genap');
    write('Pilihan Anda (1/2): ');
    readln(kategori);

    writeln;
    write('Hasil Deret Angka: ');
    i := 0;

    while i < n do
    begin
        i := i + 1;

        // Periksa kategori ganjil / genap
        if (kategori = 1) and (i mod 2 = 0) then
            continue;
        if (kategori = 2) and (i mod 2 <> 0) then
            continue;

        // Cek kelipatan 5
        if i mod 5 = 0 then
            continue;

        write(i, ' ');
    end;

    writeln;
    readln;
end.