{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T_9_27(input, output);
const 
    n = 5;
var
    a: array [1..n, 1..n] of real;
    i, j: integer;
    p: boolean;
begin
    writeln('Зянчурин Игорь, 110, 9.27');
    writeln('Введите матрицу: ');
    for i := 1 to n do 
        for j := 1 to n do
            read(a[i, j]);
    i := 1;
    p := true;
    while (i <= n - 1) and p do begin
        j := i + 1;
        while (j <= n) and p do begin
            p := a[i, j] = a[j, i];
            j := j + 1
        end;
        i := i + 1;
    end;
    writeln('А^т = A ', p)
end.
