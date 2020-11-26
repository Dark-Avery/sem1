{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T5_41(input, output);
var
    x, k, x1: integer;
begin
    writeln('Зянчурин Игорь, 110, 5.41');
    writeln('Введите послед-ность чисел, заканчивающуюся нулем: ');
    read(x);
    k := 0;
    x1 := 0;
    while x <> 0 do begin
        if x1 * x < 0 then 
            k := k + 1;
        x1 := x;
        read(x)
    end;
    writeln('Количество изменений знака в последовательности - ', k);
end.
