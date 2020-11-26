{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T8_39(input, output);
const 
    n = 10;
var
    x: array [1..n] of 1..n+1;
    p, a, b, k, i, y: integer;
begin
    writeln('Зянчурин Игорь, 110, 8.39');
    writeln('Введите число от 1 до 11: ');
    read(p);
    a := 1;
    b := n;
    for i := 1 to p - 1 do begin
        x[i] := i;
        write(x[i], ' ')
    end;
    if p + 1 <= 11 then
        for i := p to 10 do begin
            x[i] := i + 1;
            write(x[i], ' ')
        end;
    writeln;
    if x[1] = 2 then
        y := 1
    else if x[n] = n then
        y := n + 1
    else begin
        k := (a + b) div 2;
        while (x[k] = k) or (x[k - 1] <> k - 1) do begin
            if x[k] > k then
                b := k
            else if x[k] = k then
                a := k;
            k := (a + b) div 2 + (a + b) mod 2
        end;
        y := k
    end;
    writeln(y, ' = ', p)
end.

