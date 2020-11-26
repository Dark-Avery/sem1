{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T8_41g(input, output);
const 
    n = 10;
var
    a: array [1..n] of real;
    i, k, b, j, al: integer; 
    t: real;
    p: boolean;
begin
    writeln('Зянчурин Игорь, 110, 8.41г');
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
            al := 1;
            b := k;
            p := false;
            while not p do begin
                j := (al + b) div 2;
                if a[k + 1] >= a[k] then
                    p := true
                else if a[k + 1] <= a[1] then begin
                    p := true;
                    t := a[k + 1];
                    for i := k + 1 downto 2 do
                        a[i] := a[i - 1];
                    a[1] := t
                end else if (a[k + 1] >= a[j]) then
                    if (a[k + 1] <= a[j + 1]) then begin
                        t := a[k + 1];
                        for i := k + 1 downto j + 2 do
                            a[i] := a[i - 1];
                        a[j + 1] := t;
                        p := true
                    end else
                        al := j
                else 
                    b := j;
            end;
            k := k + 1
        until k = n
    end;
    writeln('Упорядоченный массив: ');
    for i := 1 to n do
        write(a[i]:0:2, ' ');
    writeln
end.
