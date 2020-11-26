{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T6_33(input, output);
var
    k, p: integer;
    c: char;
begin
    writeln('Зянчурин Игорь, 110, 6.33');
    writeln('Введите число в 8-й с.с., а после пробел: ');
    read(c);
    k := 0;
    repeat
        k := k * 8 + ord(c) - ord ('0');
        read(c)
    until c = ' ';
    p := 1;
    while k div p > 4 do
            p := p * 5;
    write('Число в 5-й с.с. - ');
    repeat
        write(chr(ord('0') + k div p));
        k := k mod p;
        p := p div 5
    until p = 0;
    writeln
end.
