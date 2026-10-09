program Soal5;
uses crt;

var
  m, n, i, j, lulus, tidak : integer;
  nilai, total, rata: real;

begin
  clrscr;
  writeln('=== PROGRAM REKAPITULASI NILAI MAHASISWA ===');
  write('Masukkan jumlah mahasiswa Anda : ');
  readln(m);
  write('Masukkan jumlah tugas : ');
  readln(n);

  lulus := 0;
  tidak := 0;

  for i := 1 to m do
  begin
    writeln;
    writeln('--- Mahasiswa Ke-', i, ' ---');
    total := 0;

    for j := 1 to n do
    begin
      write('Masukkan nilai tugas ke-', j, ': ');
      readln(nilai);
      total := total + nilai;
    end;

    rata := total / n;
    write('Rata-rata: ', rata:0:2, ' - Status: ');

    if rata >= 65 then
    begin
      writeln('LULUS');
      lulus := lulus + 1;
    end
    else
    begin
      writeln('TIDAK LULUS');
      tidak := tidak + 1;
    end;
  end;

  writeln;
  writeln('=== RINGKASAN REKAPITULASI ===');
  writeln('Total Mahasiswa LULUS       : ', lulus);
  writeln('Total Mahasiswa TIDAK LULUS : ', tidak);
  readln;
end.