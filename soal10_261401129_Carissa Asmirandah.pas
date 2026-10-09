program StatementCase;
uses crt;

var
    a : integer;

begin
clrscr;

    write('Masukkan angka hari (1-7) : ');
    readln (a);

    case a of

    1 : writeln ('Hari Senin');
    2 : writeln ('Hari Selasa');
    3 : writeln ('Hari Rabu');
    4 : writeln ('Hari Kamis');
    5 : writeln ('Hari Jumat');
    6 : writeln ('Hari Sabtu');
    7 : writeln ('Hari Minggu');

    else
        writeln ('Angka tidak valid');
    end;

end.