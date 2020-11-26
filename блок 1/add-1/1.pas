{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T1(input, output);
var
    i, n, j, p, q: integer;
begin
    writeln('Зянчурин Игорь, 110, 1');
    writeln('Введите P, Q и n: ');
    read(p, q, n);
    write('P/Q = ', p div q, '.');
    j := 10 * (p mod q);
    for i := 1 to n do begin
        write(j div q);
        j := 10 * (j mod q)
    end;
    writeln
end.
