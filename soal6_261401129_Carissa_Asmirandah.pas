program cassOF;
uses crt;

var
    tugas, UTS, UAS, NA, hadir : double;
    NA_I : integer;
    NI : char;
    status : string;

begin
clrscr;

    writeln(' PENENTUAN NILAI AKHIR MATAKULIAH ');
    write('Masukkan Nilai Tugas (0-100) : '); readln(tugas);
    write('Masukkan Nilai UTS (0-100)   : '); readln(UTS);
    write('Masukkan Nilai UAS (0-100)   : '); readln(UAS);
    write('Masukkan Kehadiran (%)       : '); readln(hadir);

    NA := (0.3 * tugas) + (0.3 * UTS) + (0.4 * UAS);
    NA_I := round(NA);

    case (NA_I) of
        85..100 : NI := 'A';
        75..84  : NI := 'B';
        60..74  : NI := 'C';
        50..59  : NI := 'D';
        0..49   : NI := 'E';
    else
        begin
            writeln('Range nilai tidak sesuai');
            NI := '-';
        end;
    end;

    // Kelulusan: Nilai Indeks A, B, atau C DAN kehadiran minimal 80%
    if (NI in ['A', 'B', 'C']) and (hadir >= 80) then
        status := 'LULUS'
    else
        status := 'TIDAK LULUS';

    writeln;
    writeln('Nilai akhir  : ', NA:0:2);
    writeln('Nilai indeks : ', NI);
    writeln('Status       : ', status);

    readln;
end.