{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T8_56(input, output);
const 
    n = 10;
var
    a: array ['a'..'z'] of integer;
    c: char;
begin
    writeln('Зянчурин Игорь, 110, 8.56');
    writeln('Введите текст: ');
    for c := 'a' to 'z' do
        a[c] := 0;
    read(c);
    while c <> '.' do begin
        a[c] := a[c] + 1;
        read(c)
    end;
    writeln('Буквы входящие по одному разу: ');
    for c := 'a' to 'z' do
        if a[c] = 1 then
            write(c);
    writeln
end.
