{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T_10_19(input, output);
const
    n = 20;
var
    a: packed array [1..52] of char;
    b, g: packed array [1..n] of char;
    i, j: integer;
    c: char;
    p: boolean;
begin
    writeln('Зянчурин Игорь, 110, 10.19');
    writeln('Ведите текст из ', n, ' символов: ');
    a := 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    for i := 1 to n do
        b[i] := ' ';
    for i := 1 to n do begin
        read(c);
        j := 0;
        repeat
            j := j + 1;
            p := c = a[j]
        until p or (j = 52);
        if p then
            b[i] := '-';
        g[i] := c
    end;
    writeln(g);
    writeln(b)
end.
