{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T6_32(input, output);
var
    k, max: integer;
    c: char;
begin
    writeln('Зянчурин Игорь, 110, 6.32');
    writeln('Введите послед-ть чисел в 7-й с.с., разделяя пробелом: ');
    max := 0;
    repeat
        read(c);
        k := 0;
        repeat
            k := k * 7 + ord(c) - ord ('0');
            read(c)
        until (c = '.') or (c = ' ');
        if k > max then
            max := k;
    until c = '.';
    writeln('Макс. число в 10-й с.с. - ', max)
end.
