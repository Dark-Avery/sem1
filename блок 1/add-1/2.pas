{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T2(input, output);
var
    n, p: integer;
begin
    writeln('Зянчурин Игорь, 110, 2');
    writeln('Введите число: ');
    read(n);
    p := 0;
    while n > 0 do begin
        if n mod 10 <> 3 then
            p := 10 * p + n mod 10;
        n := n div 10;
    end;
    while p > 0 do begin
        n := 10 * n + p mod 10;
        p := p div 10
    end;
    writeln('Число без цифр 3 - ', n)
end.
