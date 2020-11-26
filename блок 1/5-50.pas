{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T5_50(input, output);
var
    x, y, k: real;
begin
    writeln('Зянчурин Игорь, 110, 5.50');
    writeln('Введите послед-ность чисел, заканч. отриц. числом: ');
    read(x);
    k := 0;
    y := 0;
    while x >= 0 do begin
        k := k + x;
        y := y + k;
        read(x)
    end;
    writeln('Результат: ', y:6:4)
end.
