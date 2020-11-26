{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T8_58(input, output);
const 
    n = 10;
var
    a: array [1..n] of char;
    c: char;
    i, k, j, kol: integer;
    p: boolean;
begin
    writeln('Зянчурин Игорь, 110, 8.58');
    writeln('Введите текст: ');
    k := 0;
    repeat
        k := k + 1;
        read(c);
        if c <> '.' then begin
            a[k] := c;
        end;
    until (c = '.') or (k = n + 1);
    k := k - 1;
    kol := 1;
    p := true;
    for i := 1 to k - 1 do begin
        j := i;
        repeat
            j := j + 1;
            p := a[i] = a[j]
        until p or (j = k);
        if not p then
            kol := kol + 1;
    end;
    writeln('Кол-во различных букв: ', kol);
end.
