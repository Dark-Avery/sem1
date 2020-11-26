{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T8_41v(input, output);
const 
    n = 10;
var
    a: array [1..n] of real;
    i, k: integer; 
    j: real;
    p: boolean;
begin
    writeln('Зянчурин Игорь, 110, 8.41в');
    writeln('Введите массив: ');
    for i := 1 to n do
        read(a[i]);
    k := 1;
    i := 1;
    p := true;
    while (i <= n - 1) and p do begin
        if a[i + 1] >= a[i] then
            k := k + 1
        else
            p := false;
        i := i + 1
    end;
    if k <> n then begin
        repeat
            for i := k + 1 downto 2 do
                if a[i] < a[i - 1] then begin
                    j := a[i];
                    a[i] := a[i - 1];
                    a[i - 1] := j
                end;
            k := k + 1
        until k = n
    end;
    writeln('Упорядоченный массив: ');
    for i := 1 to n do
        write(a[i]:0:2, ' ');
    writeln
end.
