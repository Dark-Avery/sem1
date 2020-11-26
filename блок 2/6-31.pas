{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T6_31(input, output);
var
    n, p, i, k: integer;
begin
    writeln('Зянчурин Игорь, 110, 6.31');
    writeln('Введите число n: ');
    read(n);
    writeln('Числа в троичной с.с. в интервале [0, n]: ');
    for i := 0 to n do begin
        k := i;
        p := 1;
        while k div p > 2 do
            p := p * 3;
        write(i, ' - ');
        repeat
            write(chr(ord('0') + k div p));
            k := k mod p;
            p := p div 3
        until p = 0;
        writeln
    end;
    writeln
end.
