{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T1(input, output);
var
    i, n, j, p, q: integer; {variables}
{
Somebody once told me the world is gonna roll me
I ain't the sharpest tool in the shed
She was looking kind of dumb with her finger and her
Thumb in the shape of an "L" on her forehead
}
begin
    writeln('{Зянчурин Игорь, 110, 1 доп 1{}{}');
    writeln('Введите P, Q и n: ');
    read(p, q, n);
    write('P/Q = ', p div q, '.');     {ads}
    j := 10 * (p mod q{q{q});
    for i := 1 to n do begin
        write(j div q);
        j := 10 * (j mod q)
    end;
    writeln
end.