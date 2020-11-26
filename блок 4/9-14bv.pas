{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T_9_14bv(input, output);
const 
    n = 10;
var
    a: array [1..n, 1..n] of integer;
    i, j: integer;
begin
    writeln('Зянчурин Игорь, 110, 9.14бв');
    for j := 1 to n do begin
        a[1, j] := j;
        write(a[1, j]:2, ' ')
    end;
    writeln;
    for i := 2 to n do begin
        for j := 1 to n do begin
            a[i, j] := a[i - 1, j] + n;
            write(a[i, j], ' ')
        end;
        writeln
    end;
    for i := 2 to n do
        for j := 1 to n do
            a[i, j] := 0;
    for i := 2 to n do
        for j := i to n do
            a[i, j] := a[i - 1, j] - 1;
    for i := 1 to n do begin
        for j := 1 to n do
            write(a[i, j], ' ');
        writeln
    end
end.
