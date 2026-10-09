program Soal2;
uses crt;

const
    PASS_RAHASIA = 'pascal0910';

var
    input: string;
    coba: integer;

begin
clrscr;
    coba := 0;

repeat
    write('Masukkan Kata Sandi: ');
    readln(input);
    coba := coba + 1;
    if input = PASS_RAHASIA then
    begin
      writeln('Login Berhasil! Selamat Datang');
      break;
    end

    else
    begin
      if coba < 3 then
        writeln('Sandi salah! Kesempatan tersisa: ', 3 - coba)
      else
        writeln('Akses Ditolak! Akun Terkunci.');
    end;

  until coba = 3;

  readln;
end.