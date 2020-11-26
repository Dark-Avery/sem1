{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T8_54(input, output);
const 
    n = 10;
var
    x, y: array [1..n] of integer;
    i, j, min: integer;
    p: boolean;
begin
    writeln('Зянчурин Игорь, 110, 8.54');
    writeln('Введите 2 посл-ности: ');
    for i := 1 to n do
        read(x[i]);
    for i := 1 to n do
        read(y[i]);
    min := x[1];
    for i:= 1 to n do begin
        p := true;
        j := 1;
        while p and (j <= n) do begin
            p := x[i] <> y[j];
            j := j + 1
        end;
        if p then
            if x[i] < min then
                min := x[i];
    end;
    writeln('Мин. элемент не вх. во 2-ю посл-ность - ', min)
end.
