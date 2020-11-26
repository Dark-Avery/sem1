{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T6_36_37(input, output);
var
    i, sign, signe, es: integer; 
    c: char;
    x, e, m: real;
begin
    writeln('Зянчурин Игорь, 110, 6.36-37');
    writeln('Введите вещественное число, за ним пробел: ');
    read(c);
    sign := 1;
    signe := 1;
    e := 1;
    es := 0;
    x := 0;
    m := 10;
    if c = '-' then begin
        sign := -1;
        read(c)
    end else if c = '+' then
        read(c);
    repeat
        x := x * 10 + ord(c) - ord('0');
        read(c)
    until (c = '.') or (c = 'e') or (c = 'E');
    if c = '.' then begin
        read(c);
        repeat
            x := x + (ord(c) - ord('0')) / m;
            m := m * 10;
            read(c)
        until (c = ' ') or (c = 'e') or (c = 'E')
    end;
    if (c = 'e') or (c = 'E') then begin
        read(c);
        if c = '-' then begin
            signe := -1;
            read(c)
        end else if c = '+' then
            read(c);
        repeat
            es := es * 10 + ord(c) - ord('0');
            read(c)
        until c = ' ';
        es := es * signe;
        if es >= 1 then
            for i := 1 to es do
                e := e * 10
        else if es <= -1 then
            for i := es to -1 do
                e := e / 10;
    end;
    x := x * sign * e;
    e := 0;
    if x >= 0 then
        write('Ваше число - +0.')
    else 
        write('Ваше число - -0.');
    x := abs(x);
    if x <> 0 then
        while trunc(x * 10) = 0 do begin
            x := x * 10;
            e := e - 1
        end;
    while trunc(x) <> 0 do begin
        x := x / 10;
        e := e + 1
    end;
    for i := 1 to 9 do begin
        x := (x - trunc(x)) * 10;
        write(chr(trunc(x) + ord('0')))
    end;
    if e >= 0 then
        write('E+')
    else 
        write('E-');
    e := abs(e);
    if e > 9 then begin
        write(chr(trunc(e / 10) + ord('0')));
        e := ((e / 10) - trunc(e / 10)) * 10;
        writeln(chr(trunc(e) + ord('0')))
    end else 
        writeln('0', chr(trunc(e) + ord('0')))
end.
