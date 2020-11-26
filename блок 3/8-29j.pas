{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T8_29j(input, output);
const 
    n = 10;
var
    a: array [1..n] of real;
    i, j: integer; 
begin
    writeln('Зянчурин Игорь, 110, 8.29ж');
    writeln('Введите массив: ');
    for i := 1 to n do
        read(a[i]);
    j := 1;
    for i := 1 to n do
        if a[i] <> 0 then begin
            a[j] := a[i];
            j := j + 1
        end;
    for i := j to n do
        a[i] := 0;
    writeln('Преобразованный массив: ');
    for i := 1 to n do
        write(a[i]:0:2, ' ');
    writeln
end.
