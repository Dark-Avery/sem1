{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T5_48(input, output);
var
    x, k, max, n, i: integer;
begin
    writeln('Зянчурин Игорь, 110, 5.48');
    writeln('Введите кол-во чисел и последовательность: ');
    read(n);
    max := 0;
    k := 0;
    for i := 1 to n do begin
        read(x);
        if x = 0 then 
            k := k + 1
        else begin 
            if k > max then 
                max := k;
            k := 0;
        end;
    end;
    if k > max then
        max := k;
    writeln('Макс. количество подряд идущих нулей - ', max);
end.
