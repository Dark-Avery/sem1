{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T5_30v(input, output);
var
    ok: boolean;
    i, x, x1, d, n: integer;
begin
    writeln('Зянчурин Игорь, 110, 5.30в');
    ok := true;
    writeln('Введите кол-во чисел >=2 а за ним саму послед-ть: ');
    read(n);
    read(x, x1);
    d := x1 - x;
    i := 2;
    while ok and (i < n) do begin
        i := i + 1;
        read(x);
        ok := x - x1 = d;
        x1 := x
    end;
    if ok then 
        writeln('Да')
    else 
        writeln('Нет')
end.
