{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T5_20d(input, output);
const
    eps = 1e-5;
var
    v, y, x: real;
    j: integer;
begin
    writeln('Зянчурин Игорь, 110, 5.20д');
    writeln('Введите число x < |1|: ');
    readln(x);
    j := 1;
    v := x;
    y := x;
    while abs(v) >= eps do begin
        j := j + 2;
        v := -v * x * x * (j - 2) / j;
        y := y + v
    end;
    writeln(y:7:4, ' = ', arctan(x):7:4);
end.
