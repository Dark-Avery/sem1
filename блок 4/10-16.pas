{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T_10_16(input, output);
const
    n = 30;
    k = 5;
var
    a: array[1..n] of packed array [1..k] of char;
    i, j: integer;
    c: char;
    p: boolean;
begin
    writeln('Зянчурин Игорь, 110, 10.16');
    writeln('Ведите слова, разделяя запятыми или пробелами: ');
    read(c);
    i := 1;
    while (c <> '.') and (i <= n) do begin
        j := 1;
        while (c <> ',') and (c <> '.') and (j <= k) do begin
            a[i, j] := c;
            j := j + 1;
            read(c)
        end;
        for j := j to k do
            a[i, j] := ' ';
        i := i + 1;
        if c <> '.' then
            read(c)
    end;
    writeln('Слова из которых состоит текст: ');
    write(a[1]);
    for i := 2 to n do begin
        j := i;
        repeat
            j := j - 1;
            p := a[i] = a[j]
        until p or (j = 1);
        if not p then
            write(a[i], ' ')
    end;
    writeln
end.
