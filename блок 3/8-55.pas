{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T8_55(input, output);
const 
    n = 10;
var
    a: array [1..n] of integer;
    i, j, inv: integer;
begin
    writeln('Зянчурин Игорь, 110, 8.55');
    writeln('Введите посл-ность: ');
    for i := 1 to n do
        read(a[i]);
    inv := 0;
    for i:= 1 to n - 1 do
        for j := i + 1 to n do
            if a[j] < a[i] then
                inv := inv + 1;
    writeln('Кол-во инверсий - ', inv)
end.
