{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T5_46(input, output);
var
    x, k, x1, n, i: integer;
begin
    writeln('Зянчурин Игорь, 110, 5.46');
    writeln('Введите кол-во чисел и неуб. последовательность: ');
    read(n, x1);
    k := 1;
    for i := 2 to n do begin
        read(x);
        if x > x1 then begin 
            k := k + 1;
            x1 := x;
        end;
    end;
    writeln('Количество различных чисел - ', k);
end.
