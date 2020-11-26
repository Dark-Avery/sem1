{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T8_41b(input, output);
const 
    n = 10;
var
    a: array [1..n] of real;
    i, k: integer; 
    j: real;

begin
    writeln('Зянчурин Игорь, 110, 8.41б');
    writeln('Введите массив: ');
    for i := 1 to n do
        read(a[i]);
    repeat
        k := 0;
        for i := n downto 2 do
            if a[i] < a[i - 1] then begin
                j := a[i];
                a[i] := a[i - 1];
                a[i - 1] := j;
                k := k + 1
            end
    until k = 0;
    writeln('Упорядоченный массив: ');
    for i := 1 to n do
        write(a[i]:0:2, ' ');
    writeln;
end.
