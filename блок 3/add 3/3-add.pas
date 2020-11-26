{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T_3_add(input, output);
const 
    n = 10;
var
    a: array [1..n] of integer;
    x, i, j, t: integer;
begin
    writeln('Зянчурин Игорь, 110, 3.add');
    writeln('Введите ', n, ' целых чисел и число x: ');
    for i := 1 to n do
        read(a[i]);
    read(x);
    i := 1;
    j := n;
    while i < j do begin
        while (a[i] < x) and (i < j) do
            i := i + 1;
        while (a[j] >= x) and (j > i) do
            j := j - 1;
        t := a[i];
        a[i] := a[j];
        a[j] := t;
    end;
    j := n;
    while i < j do begin
        while (a[i] = x) and (i < j) do
            i := i + 1;
        while (a[j] <> x) and (j > i) do
            j := j - 1;
        t := a[i];
        a[i] := a[j];
        a[j] := t;
    end;
    for i := 1 to n do
        write(a[i], ' ');
    writeln
end.

