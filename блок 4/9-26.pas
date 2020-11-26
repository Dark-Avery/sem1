{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T_9_26(input, output);
const 
    m = 3;
var
    a, b, c: array [1..m, 1..m] of real;
    i, j, k, n, z: integer;
begin
    writeln('Зянчурин Игорь, 110, 9.26');
    writeln('Введите степень и матрицу: ');
    read(n);
    for i := 1 to m do 
        for j := 1 to m do
            read(a[i, j]);
    b := a;
    if n = 1 then
        c := a
    else
        for z := 2 to n do begin
            for i := 1 to m do
                for j := 1 to m do begin
                    c[i, j] := 0;
                    for k := 1 to m do
                        c[i, j] := c[i, j] + b[i, k] * a[k, j]
                end;
            b := c
        end;
    for i := 1 to m do begin
        for j := 1 to m do
            write(c[i, j]:0:2, ' ');
        writeln
    end
end.
